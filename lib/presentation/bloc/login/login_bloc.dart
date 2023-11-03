import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/auth/interface_authentication.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginKakaoLogin>(_kakaoLogin);
    on<LoginGoogleLogin>(_googleLogin);
    on<LoginAppleLogin>(_appleLogin);
  }

  final _authenticationRepository = getIt<InterfaceAuthenticatoin>();

  Future<void> _googleLogin(
    LoginGoogleLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.inProgress));
    try {
      // 이 부분들 다 usecase로 묶을 수 있을 것 같다
      await _authenticationRepository.googleLogin();
      _authenticationRepository.status.listen((authStatus) {
        switch (authStatus) {
          case AuthenticationStatus.unknown:
            emit(state.copyWith(status: LoginStatus.unknown));
          case AuthenticationStatus.authenticated:
            emit(state.copyWith(status: LoginStatus.success));
          case AuthenticationStatus.unauthenticated:
            emit(state.copyWith(status: LoginStatus.failure));
        }
      });
    } catch (_) {
      emit(state.copyWith(status: LoginStatus.failure));
    }
  }

  Future<void> _appleLogin(
    LoginAppleLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.inProgress));
    try {
      await _authenticationRepository.appleLogin();
      _authenticationRepository.status.listen((authStatus) {
        switch (authStatus) {
          case AuthenticationStatus.unknown:
            emit(state.copyWith(status: LoginStatus.unknown));
          case AuthenticationStatus.authenticated:
            emit(state.copyWith(status: LoginStatus.success));
          case AuthenticationStatus.unauthenticated:
            emit(state.copyWith(status: LoginStatus.failure));
        }
      });
    } catch (_) {
      emit(state.copyWith(status: LoginStatus.failure));
    }
  }

  Future<void> _kakaoLogin(
    LoginKakaoLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.inProgress));
    try {
      await _authenticationRepository.kakaoLogin();
      _authenticationRepository.status.listen((authStatus) {
        switch (authStatus) {
          case AuthenticationStatus.unknown:
            emit(state.copyWith(status: LoginStatus.unknown));
          case AuthenticationStatus.authenticated:
            emit(state.copyWith(status: LoginStatus.success));
          case AuthenticationStatus.unauthenticated:
            emit(state.copyWith(status: LoginStatus.failure));
        }
      });
    } catch (_) {
      emit(state.copyWith(status: LoginStatus.failure));
    }
  }
}
