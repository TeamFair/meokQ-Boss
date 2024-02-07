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
import 'package:meokq_boss/data/vo/market/detail_market/detail_market_vo.dart';
import 'package:meokq_boss/data/vo/market/market_vo.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';

abstract class InterfaceRemote {
  void updateRepository({
    List<Object?>? headers,
  });

  Future<LoginVO> login({required LoginDTO loginDTO});

  Future<MarketVO> getMarkets();

  Future<ApplyMarketVO> applyMarkets({
    required Map<String, dynamic> applyMarketDTO,
  });

  Future<void> postAuth({required Map<String, dynamic> applyAuthDTO});

  Future<void> postAgreement({required List<AgreementDTO> agreementList});

  Future<bool> getAgreement({
    required String agreementType,
  });

  Future<ImageVO> postImage({
    required String type,
    required String file,
  });

  Future<String> getImage({required String imageId});

  Future<void> postChallenge({required Map<String, dynamic> challengeDTO});

  Future<List<ChallengeVO>> getChallenge({
    required String marketId,
    String? status,
  });

  Future<void> publishQuest({required PublishQuestDTO publishQuestDTO});

  Future<void> deletehQuest({required DeleteQuestDTO deleteQuestDTO});

  Future<void> postQuest({required Map<String, dynamic> dto});

  Future<List<GetQuestVO>> getQuests({required String marketId});

  Future<Quest> getQuest({required String questId});

  Future<void> withdraw();

  Future<void> logout();

  Future<DetailMarketVO> getDetailMarket();

  Future<List<Coupon>> getCoupons({required String status});
}
