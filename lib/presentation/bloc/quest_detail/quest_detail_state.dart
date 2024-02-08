part of 'quest_detail_bloc.dart';

class QuestDetailState extends Equatable {
  final Quest? quest;
  final int? ticketCount;
  final int questPeriod;

  const QuestDetailState({
    this.quest,
    this.ticketCount,
    required this.questPeriod,
  });

  QuestDetailState copyWith({
    Quest? quest,
    int? ticketCount,
    int? questPeriod,
  }) {
    return QuestDetailState(
      quest: quest ?? this.quest,
      ticketCount: ticketCount ?? this.ticketCount,
      questPeriod: questPeriod ?? this.questPeriod,
    );
  }

  @override
  List<Object?> get props => [
        quest,
        ticketCount,
        questPeriod,
      ];
}
