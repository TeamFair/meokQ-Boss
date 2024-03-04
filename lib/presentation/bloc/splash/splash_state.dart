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

enum AppUpdateStatus {
  init,
  updateNeeded, // 강업 진행
  updateRecommended, // 업데이트 권고
  updated, // 최신 업데이트 진행
  overUpdated
}

class SplashState extends Equatable {
  const SplashState({
    this.status = SplashStatus.inProgress,
    this.appUpdateStatus = AppUpdateStatus.init,
    this.comment = '',
  });

  final SplashStatus status;
  final AppUpdateStatus appUpdateStatus;
  final String comment;

  SplashState copyWith({
    SplashStatus? status,
    AppUpdateStatus? appUpdateStatus,
    String? comment,
  }) {
    return SplashState(
      status: status ?? this.status,
      appUpdateStatus: appUpdateStatus ?? this.appUpdateStatus,
      comment: comment ?? this.comment,
    );
  }

  @override
  List<Object> get props => [
        status,
        appUpdateStatus,
        comment,
      ];
}
