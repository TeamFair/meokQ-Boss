import 'package:freezed_annotation/freezed_annotation.dart';

part 'mission.freezed.dart';
part 'mission.g.dart';

@freezed
class Mission with _$Mission {
  const factory Mission({
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'target', defaultValue: '') required String target,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'type') required String missionType,
  }) = _Mission;

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);
}

enum MissionType {
  free,
  basic;

  MissionType missionTypeFromString(String str) {
    if (str == 'FREE') {
      return MissionType.free;
    } else {
      return MissionType.basic;
    }
  }

  String get text => switch (this) {
        MissionType.basic => '기본 퀘스트',
        MissionType.free => '자유 퀘스트',
      };

  String get title => switch (this) {
        MissionType.basic => '미션 대상 아이템',
        MissionType.free => '미션',
      };

  String get hintText => switch (this) {
        MissionType.basic => 'ex) 아메리카노',
        MissionType.free => '미션 내용을 입력하세요',
      };
  
  String get jsonText => switch (this) {
        MissionType.basic => 'NORMAL',
        MissionType.free => 'FREE',
      };

  bool get isFreeQuest => this == MissionType.free;
}