import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/auth/interface_authentication.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(
          const LoginState(
            loginStatus: LoginStatus.init,
          ),
        ) {
    on<LoginButtonTap>(_loginButtonTap);
  }

  final _authenticationRepository = getIt<InterfaceAuthenticatoin>();

  Future<void> _loginButtonTap(
    LoginButtonTap event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(loginStatus: LoginStatus.init));
      LoginStatus loginStatus;
      switch (event.loginMethod) {
        case LoginMethod.kakao:
          loginStatus = await _authenticationRepository.kakaoLogin();
        case LoginMethod.google:
          loginStatus = await _authenticationRepository.googleLogin();
        default:
          loginStatus = await _authenticationRepository.appleLogin();
      }
      emit(state.copyWith(loginStatus: loginStatus));
    } catch (_) {
      emit(state.copyWith(loginStatus: LoginStatus.failure));
    }
  }
}
