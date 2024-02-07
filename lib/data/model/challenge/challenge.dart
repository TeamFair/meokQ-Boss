import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';

part 'challenge.freezed.dart';
part 'challenge.g.dart';

enum ChallengeStatus {
  approved,
  rejected,
  underReview;

  factory ChallengeStatus.stringToChallengeStatus(String value) =>
      switch (value) {
        'APPROVED' => ChallengeStatus.approved,
        'REJECTED' => ChallengeStatus.rejected,
        _ => ChallengeStatus.rejected,
      };
}

@freezed
class Challenge with _$Challenge {
  const factory Challenge({
    @JsonKey(name: 'challengeId') required String challengeId,
    @JsonKey(name: 'receiptImageId') required String receiptImageId,
    @JsonKey(name: 'questId') required Quest quest,
    @JsonKey(name: 'status') required String challengeStatus,
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);
}
