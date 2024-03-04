part of 'splash_bloc.dart';

sealed class SplashEvent {}

class SplashInit extends SplashEvent {}

class GoMarket extends SplashEvent {}