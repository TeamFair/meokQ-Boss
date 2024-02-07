part of 'statistics_bloc.dart';

sealed class StatisticsEvent {}

class InitStatistics extends StatisticsEvent {
  final CouponStatus couponStatus;

  InitStatistics({required this.couponStatus});
}
