part of 'login_bloc.dart';

enum LoginStatus {
  init,
  newUser,
  reject,
  review,
  firstComplete,
  APPROVED,
  failure,
  logout;

  String get title {
    return switch (this) {
      LoginStatus.newUser => '마켓 정보가 없습니다',
      LoginStatus.review => '현재 심사중입니다',
      LoginStatus.reject => '심사가 반려되었습니다',
      _ => '',
    };
  }

  String get subTitle {
    return switch (this) {
      LoginStatus.newUser => '마켓을 등록해주세요',
      LoginStatus.review => '보내주신 서류를 검토중이에요.\n약 24시간 이내 승인 결과를 안내드리겠습니다.',
      LoginStatus.reject => '사유 : ',
      _ => '',
    };
  }

  String get button {
    return switch (this) {
      LoginStatus.newUser => '마켓 등록하기',
      LoginStatus.reject => '입점 재신청하기',
      _ => '',
    };
  }

  bool get isReview => this == LoginStatus.review;

  bool get isReject => this == LoginStatus.reject;
}

enum LoginMethod {
  unknown,
  kakao,
  google,
  apple;

  String get buttonText => switch (this) {
        LoginMethod.kakao => '카카오로 로그인하기',
        LoginMethod.google => 'Google로 로그인하기',
        LoginMethod.apple => 'Apple로 로그인하기',
        _ => '',
      };
}

final class LoginState extends Equatable {
  const LoginState({
    required this.loginStatus,
  });

  final LoginStatus loginStatus;

  LoginState copyWith({
    LoginStatus? loginStatus,
    LoginMethod? loginMethod,
  }) {
    return LoginState(
      loginStatus: loginStatus ?? this.loginStatus,
    );
  }

  @override
  List<Object> get props => [loginStatus];
}
