import 'package:meokq_boss/data/model/local/apply_state.dart';

abstract class InterfaceLocal {
  Future<void> init();

  Future<void> setApplyState(ApplyState applyState);

  ApplyState? getApplyState();
}
