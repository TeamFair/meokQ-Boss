part of 'splash_bloc.dart';

enum SplashStatus {
  inProgress,
  needLogin,
  reject,
  register,
  underReview,
  approved,
  failure;  
}

class SplashState extends Equatable {
  const SplashState({
    this.status = SplashStatus.inProgress,
    this.comment = '',
  });

  final SplashStatus status;
  final String comment;

  SplashState copyWith({
    SplashStatus? status,
    String? comment,
  }) {
    return SplashState(
      status: status ?? this.status,
      comment: comment ?? this.comment,
    );
  }

  @override
  List<Object> get props => [status, comment];
}
