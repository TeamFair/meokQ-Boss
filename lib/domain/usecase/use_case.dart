import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class UseCase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}

/// 모든 통신실패, 기능실패를 대응하는 모든 Failure의 베이스
class Failure {
  final String message = '';
  final bool isRetryable = false;

  Failure(message, isRetryable);
}

mixin RestErrorHandleMixin {
  /// Rest 통신 관련 오류가 떴을 경우 [DioException]로 잡는다.
  Failure restErrorHandle(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      // 서버로 접속할 때 너무 오래 걸리면 타임아웃으로 치기
      return ServerTimeoutFailure();
    } else if (e.error == SocketException || e.error is SocketException) {
      // 와이파이, 인터넷이 끊어진 상태일 때는 통신상태가 원활하지 않다고 띄우기
      return NetworkNotConnectedFailure();
    } else {
      switch (e.response?.statusCode) {
        case 401:
          // 토큰 만료로 인해 다시 로그인
          return TokenExpiredFailure();
        default:
          // 그 외의 통신 오류는 서버에 문제가 생겼다는 것으로 대체하기
          return InternalServerFailure();
      }
    }
  }
}

class ServerTimeoutFailure implements Failure {
  @override
  String get message => '서버에 접속하는 데 시간이 너무 오래 걸립니다.\n재시도를 눌러 주세요.';

  @override
  bool get isRetryable => true;
}

class NetworkNotConnectedFailure implements Failure {
  @override
  String get message => '통신상태가 원활하지 않습니다.\n네트워크 환경 확인 후 재시도를 눌러 주세요.';

  @override
  bool get isRetryable => true;
}

class TokenExpiredFailure implements Failure {
  @override
  String get message => '토큰이 만료되었습니다\n로그인을 다시 해주세요.';

  @override
  bool get isRetryable => true;
}

class InternalServerFailure implements Failure {
  @override
  String get message => '서버에 문제가 발생했습니다.\n나중에 다시 재시도를 눌러 주세요.';

  @override
  bool get isRetryable => true;
}