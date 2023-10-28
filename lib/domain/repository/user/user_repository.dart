import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:meokq_boss/data/model/user.dart';
import 'package:meokq_boss/domain/repository/user/interface_user.dart';

@Singleton(as: IntefaceUser, env: ['prod'])
class UserRepository extends IntefaceUser {
  User? _user;

  @override
  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = const User(
        id: 'temp_id',
        email: 'asd@naver.com',
        name: 'meokQ',
      ),
    );
  }

  @override
  Future<void> setUser(User user) async {
    _user = user;
  }
}
