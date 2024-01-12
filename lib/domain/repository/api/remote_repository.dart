import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/login/login_dto.dart';
import 'package:meokq_boss/data/dto/market/apply_market/apply_market_dto.dart';
import 'package:meokq_boss/data/vo/login/login_vo.dart';
import 'package:meokq_boss/data/vo/market/apply_market/apply_market_vo.dart';
import 'package:meokq_boss/data/vo/market/market_vo.dart';
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
      // r.headers['Connection'] = 'Keep-Alive';
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

    api = MeokqApi(dio, baseUrl: 'http://43.202.229.190:9091');
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
  Future<ApplyMarketVO> applyMarkets({required ApplyMarketDTO applyMarketDTO}) {
    // TODO: implement applyMarkets
    throw UnimplementedError();
  }
}
