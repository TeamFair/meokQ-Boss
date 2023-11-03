part of 'login_bloc.dart';

enum LoginStatus {
  init,
  inProgress,
  success,
  unknown,
  failure,
}
final class LoginState extends Equatable {
  const LoginState({
    this.status = LoginStatus.init,
  });

  final LoginStatus status;

  LoginState copyWith({
    LoginStatus? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}
