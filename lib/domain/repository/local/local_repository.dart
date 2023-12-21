// import 'dart:convert';

import 'package:injectable/injectable.dart';
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
  Future<void> setKey(String key, String value) async {
    await local.setString(key, value);
  }

  @override
  String? getKey(String key) {
    return local.getString(key);
  }
}
