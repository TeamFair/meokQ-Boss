part of 'challenge_bloc.dart';

enum ChallengeStatus { init, failure, success }

class ChallengeState extends Equatable {
  final List<ChallengeVO> challengeList;
  final ChallengeStatus challengeStatus;

  const ChallengeState({required this.challengeList, required this.challengeStatus});

  ChallengeState copyWith({
    List<ChallengeVO>? challengeList,
    ChallengeStatus? challengeStatus,
  }) {
    return ChallengeState(
      challengeList: challengeList ?? this.challengeList,
      challengeStatus: challengeStatus ?? this.challengeStatus,
    );
  }

  @override
  List<Object?> get props => [challengeList, challengeStatus];
}
