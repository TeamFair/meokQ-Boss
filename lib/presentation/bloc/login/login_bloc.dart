import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/auth/interface_authentication.dart';
import 'package:meokq_boss/domain/usecase/login_use_case.dart';

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

  final _authenticationRepository = getIt<InterfaceAuthentication>();

  Future<void> _loginButtonTap(
    LoginButtonTap event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(loginStatus: LoginStatus.init));
      LoginInput? loginInput;
      
      switch (event.loginMethod) {
        case LoginMethod.kakao:
          loginInput = await _authenticationRepository.kakaoLogin();
        case LoginMethod.google:
          loginInput = await _authenticationRepository.googleLogin();
        case LoginMethod.apple:
          loginInput = await _authenticationRepository.appleLogin();
        default:
          return;
      }

      if (loginInput != null) {
        (await LoginUseCase().call(
          loginInput,
        ))
            .fold((l) {
          emit(state.copyWith(loginStatus: LoginStatus.failure));
        }, (r) {
          emit(state.copyWith(loginStatus: r.loginStatus));
        });
      } else {
        emit(state.copyWith(loginStatus: LoginStatus.failure));
      }

    } catch (e) {
      print(e);
      emit(state.copyWith(loginStatus: LoginStatus.failure));
    }
  }
}
