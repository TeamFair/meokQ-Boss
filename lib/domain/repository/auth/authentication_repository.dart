import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:meokq_boss/domain/repository/auth/interface_authentication.dart';

@Singleton(as: InterfaceAuthenticatoin, env: ['prod'])
class AuthenticationRepository extends InterfaceAuthenticatoin {
  final _controller = StreamController<AuthenticationStatus>();

  @override
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  @override
  Future<void> kakaoLogin() async {
    // TODO: 카카오 로그인 api usecase 추가
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  @override
  Future<void> appleLogin() async {
    // TODO: 애플 로그인 api usecase 추가
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  @override
  Future<void> googleLogin() async {
    // TODO: 구글 로그인 api usecase 추가
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  @override
  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  @override
  void dispose() => _controller.close();
}
