import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meokq_boss/data/model/local/apply_state.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: InterfaceLocal, env: ['prod'])
class LocalRepository extends InterfaceLocal {
  late SharedPreferences local;

  @override
  Future<void> init() async {
    local = await SharedPreferences.getInstance();
  }

  @override
  ApplyState? getApplyState() {
    final json = local.getString('apply_state');
    if (json == null) {
      return null;
    }
    return jsonDecode(json) as ApplyState;
  }

  @override
  Future<void> setApplyState(ApplyState applyState) async {
    String json = jsonEncode(applyState.toJson());
    await local.setString('apply_state', json);
  }
}
