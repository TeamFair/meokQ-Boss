import 'package:dio/dio.dart' hide Headers;
import 'package:meokq_boss/data/model/response/response_vo.dart';
import 'package:retrofit/http.dart';

part 'meokq_api.g.dart';

@RestApi(baseUrl: 'http://43.202.229.190:9091')
abstract class MeokqApi {
  factory MeokqApi(Dio dio, {String baseUrl}) = _MeokqApi;

  @POST('/api/open/login')
  Future<ResponseVO> login({
    @Body() required Map<String, dynamic> data,
  });

  @GET('/api/boss/market')
  Future<ResponseVO> markets(
    // {
    // @Query('ownMarketOnly') required String ownMarketOnly,
  // }
  );

  @GET('/api/boss/market/{marketId}')
  Future<ResponseVO> market({
    @Path('marketId') required String marketId,
  });

  @GET('/api/open/quest')
  Future<ResponseVO> quests({
    @Query('marketId') required String marketId,
  });

  @GET('/api/open/market/{questId}')
  Future<ResponseVO> quest({
    @Path('questId') required String questId,
  });

  @POST('/api/boss/image')
  Future<ResponseVO> storeImage({
    @Body() required String file,
  });

  @GET('/api/boss/image/{imageId}')
  Future<ResponseVO> getImage({
    @Query('imageId') required String imageId,
  });

  @POST('/api/boss/challenge/review')
  Future<ResponseVO> storeChallenge({ // 도전내역 검토결과 등록
    @Body() required Map<String, dynamic> data,
  });

  @GET('/api/boss/challenge')
  Future<ResponseVO> getChallenge({ // 도전내역 조회
    @Query('marketId') required String marketId,
    @Query('status') required String status,
  });

  @PUT('/api/boss/quest/publish')
  Future<ResponseVO> publishQuest({ // quest 게시 요청
    @Query('marketId') required String marketId,
    @Query('questId') required String status,
    @Query('ticketCount') required String ticketCount,
  });

  @PUT('/api/boss/quest/delete')
  Future<ResponseVO> deleteQuest({ // quest 삭제 요청
    @Query('marketId') required String marketId,
    @Query('questId') required String status,
  });

  @POST('/api/boss/quest')
  Future<ResponseVO> postQuest({ // quest 게시
    @Query('marketId') required String marketId,
    @Query('questId') required String status,
  });

  @GET('/api/boss/agreement')
  Future<ResponseVO> getAgreement();

  @POST('/api/boss/agreement')
  Future<ResponseVO> postAgreement({
     @Body() required Map<String, dynamic> data,
  });
}
