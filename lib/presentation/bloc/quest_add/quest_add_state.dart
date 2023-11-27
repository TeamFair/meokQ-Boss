part of 'quest_add_bloc.dart';

enum QuestType {
  basic,
  free;

  String get text => switch (this) {
        QuestType.basic => '기본 퀘스트',
        QuestType.free => '자유 퀘스트',
      };

  String get title => switch (this) {
        QuestType.basic => '미션 대상 아이템',
        QuestType.free => '미션',
      };

  String get hintText => switch (this) {
        QuestType.basic => 'ex) 아메리카노',
        QuestType.free => '미션 내용을 입력하세요',
      };

  bool get isFreeQuest => this == QuestType.free;
}

enum RewardType {
  discount,
  giftCard;

  String get text => switch (this) {
        RewardType.discount => '할인권',
        RewardType.giftCard => '증정권',
      };

  String get subTitle => switch (this) {
        RewardType.discount => '할인율',
        RewardType.giftCard => '개수',
      };

  String get subText => switch (this) {
        RewardType.discount => '%',
        RewardType.giftCard => '개',
      };
}

enum TextType {
  missionItem,
  missionItemCount,
  rewardItem,
  reward;
}

class QuestAddState extends Equatable {
  final String missionItem;
  final String missionItemCount;
  final String rewardItem;
  final String reward;
  final QuestType questType;
  final RewardType rewardType;

  const QuestAddState({
    required this.missionItem,
    required this.missionItemCount,
    required this.rewardItem,
    required this.reward,
    required this.questType,
    required this.rewardType,
  });

  static QuestAddState init() => const QuestAddState(
        missionItem: '',
        missionItemCount: '',
        rewardItem: '',
        reward: '',
        questType: QuestType.basic,
        rewardType: RewardType.discount,
      );

  QuestAddState copyWith({
    String? missionItem,
    String? missionItemCount,
    String? rewardItem,
    String? reward,
    QuestType? questType,
    RewardType? rewardType,
  }) {
    return QuestAddState(
      missionItem: missionItem ?? this.missionItem,
      missionItemCount: missionItemCount ?? this.missionItemCount,
      rewardItem: rewardItem ?? this.rewardItem,
      reward: reward ?? this.reward,
      questType: questType ?? this.questType,
      rewardType: rewardType ?? this.rewardType,
    );
  }

  @override
  List<Object?> get props => [
        missionItem,
        missionItemCount,
        rewardItem,
        reward,
        questType,
        rewardType,
      ];

  String get title =>
      '$rewardItem $reward${rewardType.subText} ${rewardType.text}';

  String get subTitle => switch (questType) {
        QuestType.basic => '$missionItem $missionItemCount개 주문시',
        QuestType.free => missionItem,
      };

  bool get isButtonAble => rewardItem.isNotEmpty && reward.isNotEmpty && missionItem.isNotEmpty;
}
