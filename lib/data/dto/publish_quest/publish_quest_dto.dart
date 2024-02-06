import 'package:freezed_annotation/freezed_annotation.dart';

part 'publish_quest_dto.freezed.dart';
part 'publish_quest_dto.g.dart';

@freezed
class PublishQuestDTO with _$PublishQuestDTO {

  const factory PublishQuestDTO({
    @JsonKey(name: 'questId') required String questId,
    @JsonKey(name: 'marketId') required String marketId,
    @JsonKey(name: 'ticketCount') required int ticketCount,
  }) = _PublishQuestDTO;

  factory PublishQuestDTO.fromJson(Map<String, dynamic> json) =>
      _$PublishQuestDTOFromJson(json);
}