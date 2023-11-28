part of 'quest_detail_bloc.dart';

class QuestDetailState extends Equatable {
  final Quest? quest;
  final int? ticketAccount;
  final int questPeriod;

  const QuestDetailState({
    this.quest,
    this.ticketAccount,
    required this.questPeriod,
  });

  QuestDetailState copyWith({
    Quest? quest,
    int? ticketAccount,
    int? questPeriod,
  }) {
    return QuestDetailState(
      quest: quest ?? this.quest,
      ticketAccount: ticketAccount ?? this.ticketAccount,
      questPeriod: questPeriod ?? this.questPeriod,
    );
  }

  @override
  List<Object?> get props => [
        quest,
        ticketAccount,
        questPeriod,
      ];
}
