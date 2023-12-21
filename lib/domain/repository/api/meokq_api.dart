import 'package:dio/dio.dart' hide Headers;
import 'package:meokq_boss/data/model/response/response_vo.dart';
import 'package:retrofit/http.dart';

part 'meokq_api.g.dart';

@RestApi(baseUrl: 'http://43.202.229.190.:9090')
abstract class MeokqApi {
  factory MeokqApi(Dio dio, {String baseUrl}) = _MeokqApi;

  @POST('/auth/login')
  Future<ResponseVO> login({
    @Query('userType') required String userType,
    @Query('accessToken') required String accessToken,
    @Query('refreshToken') required String refreshToken,
    @Query('email') required String email,
    @Query('channel') required String channel,
  });

  @POST('/api/markets')
  Future<ResponseVO> markets({
    @Query('district') required String district,
    @Query('presidentId') required String presidentId,
  });
}
