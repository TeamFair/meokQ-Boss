part of 'quest_bloc.dart';

class QuestState extends Equatable {
  final List<GetQuestVO> questList;

  const QuestState({
    required this.questList,
  });

  QuestState copyWith({
    List<GetQuestVO>? questList,
  }) {
    return QuestState(
      questList: questList ?? this.questList,
    );
  }

  @override
  List<Object?> get props => [questList];
}
