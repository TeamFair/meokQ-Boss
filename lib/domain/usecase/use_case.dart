import 'package:dartz/dartz.dart';

abstract class UseCase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}

/// 모든 통신실패, 기능실패를 대응하는 모든 Failure의 베이스
class Failure {
  final String message = '';
  final bool isRetryable = false;

  Failure(message, isRetryable);
}