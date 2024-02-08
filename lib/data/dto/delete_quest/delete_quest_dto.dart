import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_quest_dto.freezed.dart';
part 'delete_quest_dto.g.dart';

@freezed
class DeleteQuestDTO with _$DeleteQuestDTO {

  const factory DeleteQuestDTO({
    @JsonKey(name: 'questId') required String questId,
  }) = _DeleteQuestDTO;

  factory DeleteQuestDTO.fromJson(Map<String, dynamic> json) =>
      _$DeleteQuestDTOFromJson(json);
}