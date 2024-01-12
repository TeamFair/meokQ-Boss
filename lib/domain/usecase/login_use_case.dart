// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/login/login_dto.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';

class LoginUseCase
    with RestErrorHandleMixin
    implements UseCase<LoginOutput, LoginInput> {
  final _remote = getIt<InterfaceRemote>();

  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, LoginOutput>> call(
    LoginInput input,
  ) async {
    try {
      final loginDTO = LoginDTO(
        email: input.email,
        channel: input.channel,
        accessToken: input.accessToken,
        refreshToken: input.refreshToken,
        userType: 'BOSS',
      );

      final login = await _remote.login(loginDTO: loginDTO);

      if (login.authorization.isEmpty) {
        return Left(
          LoginFailure(),
        );
      }

      _local.setKey(
        LocalKey.token,
        login.authorization,
      );

      final market = await _remote.getMarkets();

      if (market.marketId.isEmpty) {
        return Left(
          LoginFailure(),
        );
      }

      _local.setKey(
        LocalKey.marketId,
        market.marketId,
      );

      return Right(
        LoginOutput(
          // loginStatus: strToLoginStatus(market.status),
          loginStatus: LoginStatus.newUser,
        ),
      );
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(LoginFailure());
    }
  }

  LoginStatus strToLoginStatus(String str) => switch (str) {
        'DONE' => LoginStatus.done,
        'UNDER_REVIEW' => LoginStatus.review,
        'NEW_USER' => LoginStatus.newUser,
        'REJECT' => LoginStatus.reject,
        _ => LoginStatus.failure,
      };
}

class LoginInput {
  final String email;
  final String channel;
  final String accessToken;
  final String refreshToken;

  LoginInput({
    required this.email,
    required this.channel,
    required this.accessToken,
    required this.refreshToken,
  });
}

class LoginOutput {
  final LoginStatus loginStatus;

  LoginOutput({required this.loginStatus});
}

class LoginFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
