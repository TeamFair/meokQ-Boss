import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:meokq_boss/domain/repository/auth/interface_authentication.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';

@Singleton(as: InterfaceAuthenticatoin, env: ['prod'])
class AuthenticationRepository extends InterfaceAuthenticatoin {
  @override
  Future<LoginStatus> kakaoLogin() async {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    return LoginStatus.done;
  }

  @override
  Future<LoginStatus> appleLogin() async {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    return LoginStatus.reject;
  }

  @override
  Future<LoginStatus> googleLogin() async {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    return LoginStatus.newUser;
  }

  @override
  void logOut() {
  }
}
