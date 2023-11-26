import 'package:freezed_annotation/freezed_annotation.dart';

part 'apply_state.freezed.dart';
part 'apply_state.g.dart';

@freezed
class ApplyState with _$ApplyState {
  const factory ApplyState({
    required bool bossState,
    required bool storeState,
  }) = _ApplyState;

  factory ApplyState.fromJson(Map<String, dynamic> json) =>
      _$ApplyStateFromJson(json);
}