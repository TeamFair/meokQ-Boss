part of 'challenge_detail_bloc.dart';

enum ChallengeDetailStatus { init, reject, apply, failed }

class ChallengeDetailState extends Equatable {
  final String imageUrl;
  final String rewardTitle;
  final String missionTitle;
  final String challengeId;
  final ChallengeDetailStatus status;
  final String comment;

  const ChallengeDetailState({
    required this.imageUrl,
    required this.rewardTitle,
    required this.missionTitle,
    required this.challengeId,
    required this.status,
    required this.comment,
  });

  ChallengeDetailState copyWith({
    String? imageUrl,
    String? rewardTitle,
    String? missionTitle,
    String? challengeId,
    ChallengeDetailStatus? status,
    String? comment,
  }) {
    return ChallengeDetailState(
      imageUrl: imageUrl ?? this.imageUrl,
      rewardTitle: rewardTitle ?? this.rewardTitle,
      missionTitle: missionTitle ?? this.missionTitle,
      challengeId: challengeId ?? this.challengeId,
      status: status ?? this.status,
      comment: comment ?? this.comment,
    );
  }

  @override
  List<Object?> get props => [
        imageUrl,
        rewardTitle,
        missionTitle,
        challengeId,
        status,
        comment,
      ];
}
