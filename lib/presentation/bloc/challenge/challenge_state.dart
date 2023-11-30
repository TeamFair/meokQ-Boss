part of 'challenge_bloc.dart';

class ChallengeState extends Equatable {
  final List<Challenge> challengeList;

  const ChallengeState({required this.challengeList});

  ChallengeState copyWith({
    List<Challenge>? challengeList,
  }) {
    return ChallengeState(
      challengeList: challengeList ?? this.challengeList,
    );
  }

  @override
  List<Object?> get props => [challengeList];
}
