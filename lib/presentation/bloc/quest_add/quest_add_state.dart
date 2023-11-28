part of 'quest_add_bloc.dart';

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
  final MissionType missionType;
  final RewardType rewardType;

  const QuestAddState({
    required this.missionItem,
    required this.missionItemCount,
    required this.rewardItem,
    required this.reward,
    required this.missionType,
    required this.rewardType,
  });

  static QuestAddState init() => const QuestAddState(
        missionItem: '',
        missionItemCount: '',
        rewardItem: '',
        reward: '',
        missionType: MissionType.basic,
        rewardType: RewardType.discount,
      );

  QuestAddState copyWith({
    String? missionItem,
    String? missionItemCount,
    String? rewardItem,
    String? reward,
    MissionType? missionType,
    RewardType? rewardType,
  }) {
    return QuestAddState(
      missionItem: missionItem ?? this.missionItem,
      missionItemCount: missionItemCount ?? this.missionItemCount,
      rewardItem: rewardItem ?? this.rewardItem,
      reward: reward ?? this.reward,
      missionType: missionType ?? this.missionType,
      rewardType: rewardType ?? this.rewardType,
    );
  }

  @override
  List<Object?> get props => [
        missionItem,
        missionItemCount,
        rewardItem,
        reward,
        missionType,
        rewardType,
      ];

  String get title =>
      '$rewardItem $reward${rewardType.subText} ${rewardType.text}';

  String get subTitle => switch (missionType) {
        MissionType.basic => '$missionItem $missionItemCount개 주문시',
        MissionType.free => missionItem,
      };

  bool get isButtonAble => rewardItem.isNotEmpty && reward.isNotEmpty && missionItem.isNotEmpty;
}
