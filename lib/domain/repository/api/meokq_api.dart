import 'package:dio/dio.dart' hide Headers;
import 'package:meokq_boss/data/model/response/response_vo.dart';
import 'package:retrofit/http.dart';

part 'meokq_api.g.dart';

@RestApi(baseUrl: 'http://43.202.229.190:9091')
abstract class MeokqApi {
  factory MeokqApi(Dio dio, {String baseUrl}) = _MeokqApi;

  @POST('/api/open/login')
  Future<ResponseVO> login({
    // login api
    @Body() required Map<String, dynamic> data,
  });

  @GET('/api/boss/market')
  Future<ResponseVO> markets(); // 마켓정보 조회

  @GET('/api/boss/market/{marketId}')
  Future<ResponseVO> market({
    // 마켓정보 세부 조회 (내 정보 페이지)
    @Path('marketId') required String marketId,
  });

  @GET('/api/open/quest')
  Future<ResponseVO> quests({
    // Quest 목록 조회
    @Query('marketId') required String marketId,
  });

  @GET('/api/open/quest/{questId}')
  Future<ResponseVO> quest({
    // Quest 단일 상세정보 조회
    @Path('questId') required String questId,
  });

  @POST('/api/boss/image')
  Future<ResponseVO> postImage({
    // 이미지 업로드
    @Query('type') required String type,
    @Body() required FormData file,
  });

  @PUT('/api/boss/challenge/review')
  Future<ResponseVO> postChallenge({
    // 도전내역 검토결과 등록
    @Body() required Map<String, dynamic> data,
  });

  @GET('/api/boss/challenge')
  Future<ResponseVO> getChallenge({
    // 도전내역 조회
    @Query('marketId') required String marketId,
    @Query('status') String? status,
  });

  @PUT('/api/boss/quest/publish')
  Future<ResponseVO> publishQuest({
    // quest 게시 요청
    @Query('marketId') required String marketId,
    @Query('questId') required String questId,
    @Query('ticketCount') required String ticketCount,
  });

  @PUT('/api/boss/quest/delete')
  Future<ResponseVO> deleteQuest({
    // quest 삭제 요청
    @Query('marketId') required String marketId,
    @Query('questId') required String questId,
  });

  @POST('/api/boss/quest')
  Future<ResponseVO> postQuest({
    // quest 게시
    @Body() required Map<String, dynamic> body,
  });

  @GET('/api/boss/agreement')
  Future<ResponseVO> getAgreement({
    @Query('agreementType') required String agreementType,
  }); // 약관동의 내역 조회

  @POST('/api/boss/agreement')
  Future<ResponseVO> postAgreement({
    // 약관동의 내역 저장
    @Body() required String body,
  });

  @POST('/api/boss/market')
  Future<ResponseVO> postMarket({
    // 마켓정보 등록
    @Body() required Map<String, dynamic> body,
  });

  @POST('/api/boss/market/auth')
  Future<ResponseVO> postAuth({
    // 마켓인증내역 등록
    @Body() required Map<String, dynamic> body,
  });

  @GET('/api/boss/withdraw') // 회원 탈퇴
  Future<ResponseVO> withdraw();

  @GET('/api/boss/logout') // 로그아웃
  Future<ResponseVO> logout();

  @GET('/api/boss/coupon') // 쿠폰 목록 조회 (통계)
  Future<ResponseVO> getCoupons({
    @Query('status') required String status,
    @Query('marketId') required String marketId,
  });

  @GET('/api/boss/market/{marketId}/request-review') // 마켓인증정보 검토 요청
  Future<ResponseVO> requestReview({
    @Path('marketId') required String marketId,
  });

  @GET('/api/boss/market-auth') // 마켓인증정보 조회
  Future<ResponseVO> marketApproved({
    @Path('marketId') required String marketId,
  });
}
