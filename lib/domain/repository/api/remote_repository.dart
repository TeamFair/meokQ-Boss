import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/delete_quest/delete_quest_dto.dart';
import 'package:meokq_boss/data/dto/login/login_dto.dart';
import 'package:meokq_boss/data/dto/agreement/agreement_dto.dart';
import 'package:meokq_boss/data/dto/publish_quest/publish_quest_dto.dart';
import 'package:meokq_boss/data/model/coupon/coupon.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';
import 'package:meokq_boss/data/vo/challenge/challenge_vo.dart';
import 'package:meokq_boss/data/vo/image/image_vo.dart';
import 'package:meokq_boss/data/vo/login/login_vo.dart';
import 'package:meokq_boss/data/vo/market/apply_market/apply_market_vo.dart';
import 'package:meokq_boss/data/vo/market/check_market/check_market_vo.dart';
import 'package:meokq_boss/data/vo/market/detail_market/detail_market_vo.dart';
import 'package:meokq_boss/data/vo/market/market_vo.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/api/meokq_api.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/login_use_case.dart';
import 'package:meokq_boss/presentation/views/login/login_page.dart';

@LazySingleton(as: InterfaceRemote, env: ['prod'])
class RemoteRepository extends InterfaceRemote {
  late Dio dio;
  late MeokqApi api;

  late InterfaceLocal localRepositroy;

  @factoryMethod
  static RemoteRepository create(InterfaceLocal local) {
    final remoteRepository = RemoteRepository();
    remoteRepository.localRepositroy = local;
    remoteRepository.updateRepository();
    return remoteRepository;
  }

  @override
  void updateRepository({List<Object?>? headers}) async {
    dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 120);
    dio.options.sendTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);

    dio.options.headers['Authorization'] =
        getIt<InterfaceLocal>().getKey(LocalStringKey.token) ?? '';

    onRequest(r, h) {
      r.headers['accept'] = 'application/json';
      r.headers['authorization'] =
          getIt<InterfaceLocal>().getKey(LocalStringKey.token) ?? '';
      r.headers['Content-Type'] = 'application/json';
      // r.headers['Keep-Alive'] = 'timeout=60';
      return h.next(r);
    }

    onResponse(r, h) async {
      return h.next(r);
    }

    onError(
      DioException error,
      ErrorInterceptorHandler h,
    ) async {
      final context = GlobalKey<NavigatorState>().currentContext!;
      try {
        // Token값이 만료되었다 => 로그인을 다시 해야한다
        if (error.response!.statusCode == 401) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('토큰이 만료되었습니다')),
          );

          final usecase = await LoginUseCase().call(LoginInput());

          usecase.fold(
            (l) => Navigator.pushNamedAndRemoveUntil(
              context,
              LoginPage.id,
              ((route) => false),
            ),
            (r) => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('다시 시도해주세요')),
            ),
          );
        }
      } catch (e) {
        // 인터넷이 끊어진 경우 handler.next(error)만 하며 오류를 넘겨주기.
        // 인터넷이 끊어졌기 때문에 슬랙으로 오류를 못 보냄
        if (error.type == DioExceptionType.connectionTimeout) {}
      }
    }

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: onRequest,
        onResponse: onResponse,
        onError: onError,
      ),
    );

    api = MeokqApi(dio, baseUrl: productionUrl);
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<LoginVO> login({
    required LoginDTO loginDTO,
  }) async {
    final res = await api.login(
      data: {
        'userType': loginDTO.userType,
        'accessToken': loginDTO.accessToken,
        'refreshToken': loginDTO.refreshToken,
        'email': loginDTO.email,
        'channel': loginDTO.channel,
      },
    );

    final vo = LoginVO.fromJson(res.data);
    return vo;
  }

  @override
  Future<List<MarketVO>> getMarkets() async {
    final res = await api.markets(
        // ownMarketOnly: 'true',
        );

    List<MarketVO> marketList = [];
    for (var data in res.data) {
      marketList.add( MarketVO.fromJson(data));
    }

    return marketList;
  }

  @override
  Future<ApplyMarketVO> applyMarkets({
    required Map<String, dynamic> applyMarketDTO,
  }) async {
    final res = await api.postMarket(body: applyMarketDTO);
    ApplyMarketVO vo = ApplyMarketVO.fromJson(res.data);

    return vo;
  }

  @override
  Future<bool> getAgreement({
    required String agreementType,
  }) async {
    final res = await api.getAgreement(agreementType: agreementType);
    return res.data['acceptYn'] == 'Y' ? true : false;
  }

  @override
  Future<void> postAgreement({
    required List<AgreementDTO> agreementList,
  }) async {
    final dto = agreementList
        .map(
          (e) => {
            'version': e.version,
            'agreementType': e.agreementType,
            'acceptYn': e.acceptYn,
          },
        )
        .toList();

    await api.postAgreement(body: json.encode(dto));
  }

  @override
  Future<void> postAuth({required Map<String, dynamic> applyAuthDTO}) async {
    await api.postAuth(body: applyAuthDTO);
  }

  @override
  Future<void> deletehQuest({required DeleteQuestDTO deleteQuestDTO}) async {
    assert(
      localRepositroy.getKey(LocalStringKey.marketId) != null,
      '마켓 id가 없습니다',
    );

    await api.deleteQuest(
      marketId: localRepositroy.getKey(LocalStringKey.marketId) ?? '',
      questId: deleteQuestDTO.questId,
    );
  }

  @override
  Future<List<ChallengeVO>> getChallenges() async {
    assert(
      localRepositroy.getKey(LocalStringKey.marketId) != null,
      '마켓 id가 없습니다',
    );

    final res = await api.getChallenge(
      marketId: localRepositroy.getKey(LocalStringKey.marketId) ?? '',
      status: 'UNDER_REVIEW',
    );

    List<ChallengeVO> challengeList = [];
    res.data.forEach((element) {
      challengeList.add(
        ChallengeVO.fromJson(element),
      );
    });

    return challengeList;
  }

  @override
  Future<void> postChallenge({
    required Map<String, dynamic> challengeDTO,
  }) async {
    await api.postChallenge(data: challengeDTO);
  }

  @override
  Future<ImageVO> postImage({
    required String type,
    required String file,
  }) async {
    String fileName = file.split('/').last;

    dio.options.contentType = 'multipart/form-data';

    FormData data = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        file,
        filename: fileName,
      ),
    });

    final res = await api.postImage(type: type, file: data);
    return ImageVO.fromJson(res.data);
  }

  @override
  Future<void> publishQuest({required PublishQuestDTO publishQuestDTO}) async {
    assert(
      localRepositroy.getKey(LocalStringKey.marketId) != null,
      '마켓 id가 없습니다',
    );

    await api.publishQuest(
      marketId: localRepositroy.getKey(LocalStringKey.marketId)!,
      questId: publishQuestDTO.questId,
      ticketCount: publishQuestDTO.ticketCount.toString(),
    );
  }

  @override
  Future<List<QuestListVO>> getQuests({required String marketId}) async {
    final res = await api.quests(marketId: marketId);

    List<QuestListVO> questList = [];
    res.data.forEach((element) {
      questList.add(
        QuestListVO.fromJson(element),
      );
    });

    return questList;
  }

  @override
  Future<Quest> getQuest({required String questId}) async {
    final res = await api.quest(questId: questId);

    return Quest.fromJson(res.data);
  }

  @override
  Future<void> postQuest({required Map<String, dynamic> dto}) async {
    await api.postQuest(body: dto);
  }

  @override
  Future<void> logout() async {
    await api.logout();
  }

  @override
  Future<void> withdraw() async {
    await api.withdraw();
  }

  @override
  Future<DetailMarketVO> getDetailMarket() async {
    final res = await api.market(
      marketId: localRepositroy.getKey(LocalStringKey.marketId) ?? '',
    );

    return DetailMarketVO.fromJson(res.data);
  }

  @override
  Future<List<Coupon>> getCoupons({required String status}) async {
    assert(
      localRepositroy.getKey(LocalStringKey.marketId) != null,
      '마켓 id가 없습니다',
    );

    final res = await api.getCoupons(
      status: status,
      marketId: localRepositroy.getKey(LocalStringKey.marketId) ?? '',
    );

    List<Coupon> couponList = [];
    res.data.forEach((e) {
      couponList.add(
        Coupon.fromJson(e),
      );
    });

    return couponList;
  }

  @override
  Future<List<CheckMarketVO>> marketApproved() async {
    assert(
      localRepositroy.getKey(LocalStringKey.marketId) != null,
      '마켓 id가 없습니다',
    );
    List<CheckMarketVO> checkMarketList = [];
    final res = await api.marketApproved(
      marketId: localRepositroy.getKey(LocalStringKey.marketId)!,
    );

    res.data.forEach((e) {
      checkMarketList.add(CheckMarketVO.fromJson(e));
    });

    return checkMarketList;
  }

  @override
  Future<void> putMarket({required Map<String, dynamic> dto}) async {
    assert(
      localRepositroy.getKey(LocalStringKey.marketId) != null,
      '마켓 id가 없습니다',
    );

    await api.putMarket(
      marketId: localRepositroy.getKey(LocalStringKey.marketId)!,
      body: dto,
    );
  }
}
