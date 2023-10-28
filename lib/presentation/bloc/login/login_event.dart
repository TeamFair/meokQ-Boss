part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

final class LoginKakaoLogin extends LoginEvent {
  const LoginKakaoLogin();
}

final class LoginGoogleLogin extends LoginEvent {
  const LoginGoogleLogin();
}

final class LoginAppleLogin extends LoginEvent {
  const LoginAppleLogin();
}
