part of 'quest_detail_bloc.dart';

enum QuestDetailStatus { init, delete, apply }

class QuestDetailState extends Equatable {
  final Quest? quest;
  final int? ticketCount;
  final int questPeriod;
  final QuestDetailStatus questDetailStatus;

  const QuestDetailState({
    this.quest,
    this.ticketCount,
    required this.questPeriod,
    required this.questDetailStatus,
  });

  QuestDetailState copyWith({
    Quest? quest,
    int? ticketCount,
    int? questPeriod,
    QuestDetailStatus? questDetailStatus,
  }) {
    return QuestDetailState(
      quest: quest ?? this.quest,
      ticketCount: ticketCount ?? this.ticketCount,
      questPeriod: questPeriod ?? this.questPeriod,
      questDetailStatus: questDetailStatus ?? this.questDetailStatus,
    );
  }

  @override
  List<Object?> get props => [
        quest,
        ticketCount,
        questPeriod,
        questDetailStatus,
      ];
}
