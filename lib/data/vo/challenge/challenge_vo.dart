import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/quest/challenge_quest.dart';

part 'challenge_vo.freezed.dart';
part 'challenge_vo.g.dart';

@freezed
class ChallengeVO with _$ChallengeVO {

  const factory ChallengeVO({
    @JsonKey(name: 'challengeId', defaultValue: '') required String challengeId,
    @JsonKey(name: 'quest') required ChallengeQuest quest,
    @JsonKey(name: 'receiptImageId') required String receiptImageId,
    @JsonKey(name: 'userNickName') required String userNickName,
  }) = _ChallengeVO;

  factory ChallengeVO.fromJson(Map<String, dynamic> json) =>
      _$ChallengeVOFromJson(json);
}