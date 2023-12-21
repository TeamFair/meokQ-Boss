import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/login/login_dto.dart';
import 'package:meokq_boss/data/dto/market/market_dto.dart';
import 'package:meokq_boss/data/vo/login/login_vo.dart';
import 'package:meokq_boss/data/vo/market/markets_vo.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/api/meokq_api.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RemoteRepository extends InterfaceRemote {
  late Dio dio;
  late MeokqApi api;

  late InterfaceLocal localRepositroy;

  final prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 90,
  );

  @factoryMethod
  static RemoteRepository create(InterfaceLocal local) {
    final remoteRepository = RemoteRepository();
    remoteRepository.localRepositroy = local;
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
      r.headers['content-type'] = 'application/json';
      r.headers['Connection'] = 'Keep-Alive';
      r.headers['Keep-Alive'] = 'timeout=60';
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
        if (error.response!.statusCode == 401) {}
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

    api = MeokqApi(dio, baseUrl: 'http://43.202.229.190.:9090');
  }

  @override
  Future<LoginVO> login({
    required LoginDTO loginDTO,
  }) async {
    final res = await api.login(
      userType: loginDTO.userType,
      accessToken: loginDTO.accessToken,
      refreshToken: loginDTO.refreshToken,
      email: loginDTO.email,
      channel: loginDTO.channel,
    );

    final vo = LoginVO.fromJson(res.data);
    return vo;
  }

  @override
  Future<MarketsVO> markets({required MarketDTO marketDTO}) async {
    final res = await api.markets(
      district: marketDTO.district,
      presidentId: marketDTO.president,
    );

    final vo = MarketsVO.fromJson(res.data);
    return vo;
  }
}
