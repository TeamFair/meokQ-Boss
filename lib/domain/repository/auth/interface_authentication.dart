enum AuthenticationStatus { unknown, authenticated, unauthenticated}

abstract class InterfaceAuthenticatoin {
  Stream<AuthenticationStatus> get status;

  Future<void> kakaoLogin();

  Future<void> googleLogin();

  Future<void> appleLogin();

  void logOut();

  void dispose();
}
