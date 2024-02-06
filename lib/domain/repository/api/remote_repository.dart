import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/delete_quest/delete_quest_dto.dart';
import 'package:meokq_boss/data/dto/login/login_dto.dart';
import 'package:meokq_boss/data/dto/agreement/agreement_dto.dart';
import 'package:meokq_boss/data/dto/publish_quest/publish_quest_dto.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';
import 'package:meokq_boss/data/vo/challenge/challenge_vo.dart';
import 'package:meokq_boss/data/vo/image/image_vo.dart';
import 'package:meokq_boss/data/vo/login/login_vo.dart';
import 'package:meokq_boss/data/vo/market/apply_market/apply_market_vo.dart';
import 'package:meokq_boss/data/vo/market/detail_market/detail_market_vo.dart';
import 'package:meokq_boss/data/vo/market/market_vo.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/api/meokq_api.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';

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
        getIt<InterfaceLocal>().getKey(LocalKey.token);

    onRequest(r, h) {
      r.headers['accept'] = 'application/json';
      r.headers['authorization'] =
          getIt<InterfaceLocal>().getKey(LocalKey.token);
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
      try {
        if (error.response!.statusCode == 401) {
          error.requestOptions.headers['Authorization'] =
              getIt<InterfaceLocal>().getKey(LocalKey.token);
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

    api = MeokqApi(dio, baseUrl: 'http://43.202.229.190:9090');
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
  Future<MarketVO> getMarkets() async {
    final res = await api.markets(
        // ownMarketOnly: 'true',
        );

    MarketVO vo = MarketVO.fromJson(res.data[0]);

    return vo;
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
    await api.deleteQuest(
      marketId: deleteQuestDTO.marketId,
      questId: deleteQuestDTO.questId,
    );
  }

  @override
  Future<List<ChallengeVO>> getChallenge({
    required String marketId,
    String? status,
  }) async {
    final res = await api.getChallenge(marketId: marketId, status: status);

    List<ChallengeVO> challengeList = [];
    res.data.forEach((element) {
      challengeList.add(
        ChallengeVO.fromJson(element),
      );
    });

    return challengeList;
  }

  @override
  Future<String> getImage({required String imageId}) async {
    final res = await api.getImage(imageId: imageId);

    return res.data['imageId'];
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
    await api.publishQuest(
      marketId: publishQuestDTO.marketId,
      questId: publishQuestDTO.questId,
      ticketCount: publishQuestDTO.ticketCount.toString(),
    );
  }

  @override
  Future<List<GetQuestVO>> getQuests({required String marketId}) async {
    final res = await api.quests(marketId: marketId);

    List<GetQuestVO> questList = [];
    res.data.forEach((element) {
      questList.add(
        GetQuestVO.fromJson(element),
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
  Future<DetailMarketVO> getDetailMarket() async{
    final res =
        await api.market(marketId: localRepositroy.getKey(LocalKey.marketId) ?? '');

    return DetailMarketVO.fromJson(res.data);
  }
}
