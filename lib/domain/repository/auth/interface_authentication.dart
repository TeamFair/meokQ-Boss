import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';

abstract class InterfaceAuthenticatoin {
  Future<LoginStatus> kakaoLogin();

  Future<LoginStatus> googleLogin();

  Future<LoginStatus> appleLogin();

  Future<void> appleLogOut();
  
  Future<void> googleLogOut();

  Future<void> kakaoLogOut();
}
