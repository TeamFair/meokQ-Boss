part of 'challenge_detail_bloc.dart';

class ChallengeDetailEvent {}

class InitChallengeState extends ChallengeDetailEvent {
  final ChallengeVO challengeVO;

  InitChallengeState({required this.challengeVO});
}

class RejectChallenge extends ChallengeDetailEvent {}

class ApplyChallenge extends ChallengeDetailEvent {}

class ChangeComment extends ChallengeDetailEvent {
  final String comment;

  ChangeComment({required this.comment});
}
