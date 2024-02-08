part of 'quest_bloc.dart';

enum GetQuestStatus { init, failure, success }

class QuestState extends Equatable {
  final List<QuestListVO> questList;
  final GetQuestStatus questStatus;

  const QuestState({
    required this.questList,
    required this.questStatus,
  });

  QuestState copyWith({
    List<QuestListVO>? questList,
    GetQuestStatus? questStatus,
  }) {
    return QuestState(
      questList: questList ?? this.questList,
      questStatus: questStatus ?? this.questStatus,
    );
  }

  @override
  List<Object?> get props => [questList, questStatus];
}
