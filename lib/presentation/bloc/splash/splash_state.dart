part of 'splash_bloc.dart';

enum SplashStatus {
  inProgress,
  needLogin, // 로그인이 안된 상태
  reject, // 마켓 등록 실패 상태
  register, // 로그인만 된 상태
  underReview, // 마켓 등록 신청한 상태
  approved, // 승인 상태
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
