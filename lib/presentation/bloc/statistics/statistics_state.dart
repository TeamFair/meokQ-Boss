part of 'statistics_bloc.dart';

enum CouponState { init, failure, success }

class StatisticsState extends Equatable {
  final List<Coupon> couponList;
  final CouponState couponState;

  const StatisticsState({required this.couponList, required this.couponState});

  StatisticsState copyWith({
    List<Coupon>? couponList,
    CouponState? couponState,
  }) {
    return StatisticsState(
      couponList: couponList ?? this.couponList,
      couponState: couponState ?? this.couponState,
    );
  }

  @override
  List<Object?> get props => [couponList, couponState];
}
