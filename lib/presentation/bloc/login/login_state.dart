part of 'login_bloc.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.status = FormzSubmissionStatus.initial,
  });

  final FormzSubmissionStatus status;

  LoginState copyWith({
    FormzSubmissionStatus? status,
    bool? isValid,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}
