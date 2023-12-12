import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';

part 'challenge.freezed.dart';
part 'challenge.g.dart';

enum ChallengeStatus {
  notIssued,
  issuedComplete,
  usedComplete;

  String get text => switch (this) {
        ChallengeStatus.issuedComplete => '발급완료',
        ChallengeStatus.usedComplete => '사용완료',
        _ => '',
      };

  bool get isIssued => this != ChallengeStatus.notIssued;

  bool get isIssuedComplete => this != ChallengeStatus.issuedComplete;

  bool get isUsedComplete => this != ChallengeStatus.usedComplete;
}

@freezed
class Challenge with _$Challenge {
  const factory Challenge({
    required int id,
    required String url,
    required String applicantId,
    required Quest quest,
    required ChallengeStatus challengeStatus,
    required String? day,
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);
}
