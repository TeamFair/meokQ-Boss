part of 'quest_bloc.dart';

class QuestState extends Equatable {
  final List<Quest> questList;

  const QuestState({
    required this.questList,
  });

  QuestState copyWith({
    List<Quest>? questList,
  }) {
    return QuestState(
      questList: questList ?? this.questList,
    );
  }

  @override
  List<Object?> get props => [questList];
}
