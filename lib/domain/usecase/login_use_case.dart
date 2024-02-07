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
      final email = input.email ?? _local.getKey(LocalStringKey.email) ?? '';
      final channel =
          input.channel ?? _local.getKey(LocalStringKey.channel) ?? '';
      final accessToken =
          input.accessToken ?? _local.getKey(LocalStringKey.accessToken) ?? '';
      final refreshToken = input.refreshToken ??
          _local.getKey(LocalStringKey.refreshToken) ??
          '';

      if (email.isEmpty || channel.isEmpty || accessToken.isEmpty) {
        return Left(
          LoginFailure(),
        );
      }

      // 로그인 정보들을 저장
      _local.setKey(LocalStringKey.email, email);
      _local.setKey(LocalStringKey.channel, channel);
      _local.setKey(LocalStringKey.accessToken, accessToken);
      _local.setKey(LocalStringKey.refreshToken, refreshToken);

      final loginDTO = LoginDTO(
        email: email,
        channel: channel,
        accessToken: accessToken,
        refreshToken: refreshToken,
        userType: 'BOSS',
      );

      final login = await _remote.login(loginDTO: loginDTO);

      if (login.authorization.isEmpty) {
        return Left(
          LoginFailure(),
        );
      }

      _local.setKey(
        LocalStringKey.token,
        login.authorization,
      );

      final market = await _remote.getMarkets();

      if (market.marketId.isEmpty) {
        return Left(
          LoginFailure(),
        );
      }

      _local.setKey(
        LocalStringKey.marketId,
        market.marketId,
      );

      return Right(
        LoginOutput(
          loginStatus: strToLoginStatus(market.status),
        ),
      );
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(LoginFailure());
    }
  }

  LoginStatus strToLoginStatus(String str) => switch (str) {
        'APPROVED' => LoginStatus.APPROVED,
        'UNDER_REVIEW' => LoginStatus.review,
        'NEW_USER' => LoginStatus.newUser,
        'REJECTED' => LoginStatus.reject,
        _ => LoginStatus.failure,
      };
}

class LoginInput {
  final String? email;
  final String? channel;
  final String? accessToken;
  final String? refreshToken;

  LoginInput({
    this.email,
    this.channel,
    this.accessToken,
    this.refreshToken,
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
