part of 'splash_bloc.dart';

enum SplashStatus {
  inProgress,
  needLogin,
  success,
  failure,
}

class SplashState extends Equatable {
  const SplashState({this.status = SplashStatus.inProgress});

  final SplashStatus status;

  SplashState copyWith({
    SplashStatus? status,
  }) {
    return SplashState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}
