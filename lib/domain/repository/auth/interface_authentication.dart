import 'package:meokq_boss/domain/usecase/login_use_case.dart';

abstract class InterfaceAuthentication {
  Future<LoginInput?> kakaoLogin();

  Future<LoginInput?> googleLogin();

  Future<LoginInput?> appleLogin();

  Future<void> appleLogOut();

  Future<void> googleLogOut();

  Future<void> kakaoLogOut();
}
