import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState(status: SplashStatus.inProgress)) {
    on<SplashInit>(_splashInit);
  }

  // TODO: local 정보 붙여야함

  // splash에서 해야할 것
  // 1. local에서 token이나 로그인했는지 상태를 가져온다
  // 2 - 1. 로그인이 되어있다면 바로 auth의 상태를 authenticated로 바꿔서 home으로 바로 떨어지게 합니다
  // 2 - 2. 로그인 정보가 없다면 LogIn 페이지로 이동시킵니다
  Future<void> _splashInit(
    SplashInit event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(status: SplashStatus.inProgress));
    try {
      // 이자리에 위 1, 2 - 1, 2 - 2 작업이 진행되어야 합니다
      await Future.delayed(
        const Duration(milliseconds: 3000),
      );
      emit(state.copyWith(status: SplashStatus.success));
    } catch (_) {
      emit(state.copyWith(status: SplashStatus.failure));
    }
  }
}
