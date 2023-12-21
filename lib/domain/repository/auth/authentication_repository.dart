import 'dart:async';

import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:meokq_boss/domain/repository/auth/interface_authentication.dart';
import 'package:meokq_boss/domain/usecase/login_use_case.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';

@Singleton(as: InterfaceAuthenticatoin, env: ['prod'])
class AuthenticationRepository extends InterfaceAuthenticatoin {
  @override
  Future<LoginStatus> kakaoLogin() async {
    late OAuthToken oAuthToken;

    if (await isKakaoTalkInstalled()) {
      try {
        oAuthToken = await UserApi.instance.loginWithKakaoTalk();
        print('카카오톡으로 로그인 성공');
      } catch (error) {
        print('카카오톡으로 로그인 실패 $error');

        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return LoginStatus.failure;
        }
        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          oAuthToken = await UserApi.instance.loginWithKakaoAccount();
          print('카카오계정으로 로그인 성공');
        } catch (error) {
          print('카카오계정으로 로그인 실패 $error');
          return LoginStatus.failure;
        }
      }
    } else {
      try {
        oAuthToken = await UserApi.instance.loginWithKakaoAccount();
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
        return LoginStatus.failure;
      }
    }

    print('카카오계정으로 로그인 성공 $oAuthToken');

    User user = await UserApi.instance.me();
    print('사용자 정보 요청 성공'
        '\n회원번호: ${user.id}'
        '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
        '\n이메일: ${user.kakaoAccount?.email}');

    LoginStatus loginStatus = (await LoginUseCase().call(
      LoginInput(
        accessToken: oAuthToken.accessToken,
        email: user.kakaoAccount?.email ?? '',
        channel: 'KAKAO',
        refreshToken: oAuthToken.refreshToken ?? '',
      ),
    ))
        .fold((l) {
      return LoginStatus.failure;
    }, (r) {
      return r.loginStatus;
    });
    return loginStatus;
  }

  @override
  Future<LoginStatus> appleLogin() async {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    return LoginStatus.reject;
  }

  @override
  Future<LoginStatus> googleLogin() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    print(googleUser);
    print('구글 정보 : ${googleUser?.email}}');

    googleUser?.authentication.then((googleKey) {
      print(googleKey.accessToken);
      print(googleKey.idToken);
    });
    return LoginStatus.done;
  }

  @override
  Future<void> appleLogOut() async {}

  @override
  Future<void> googleLogOut() async {
    await GoogleSignIn().signOut();
  }

  @override
  Future<void> kakaoLogOut() async {
    await UserApi.instance.logout();
  }
}
