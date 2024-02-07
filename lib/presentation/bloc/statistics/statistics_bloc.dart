import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/model/coupon/coupon.dart';
import 'package:meokq_boss/domain/usecase/get_coupons_use_case.dart';

part 'statistics_event.dart';
part 'statistics_state.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc()
      : super(
          const StatisticsState(
            couponList: [],
            couponState: CouponState.init,
          ),
        ) {
    on<InitStatistics>(_initStatistics);
  }

  Future<void> _initStatistics(
    InitStatistics event,
    Emitter<StatisticsState> emit,
  ) async {
    emit(
      state.copyWith(
        couponState: CouponState.init,
        couponList: [],
      ),
    );

    final usecase = await GetCouponsUseCase().call(
      GetCouponsInput(couponStatus: event.couponStatus),
    );

    usecase.fold(
      (l) => emit(
        state.copyWith(
          couponState: CouponState.failure,
        ),
      ),
      (r) => emit(
        state.copyWith(
          couponState: CouponState.success,
          couponList: r.couponList,
        ),
      ),
    );
  }
}
