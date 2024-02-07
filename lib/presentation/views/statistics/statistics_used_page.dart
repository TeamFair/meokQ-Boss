import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/coupon/coupon.dart';
import 'package:meokq_boss/presentation/bloc/statistics/statistics_bloc.dart';
import 'package:meokq_boss/presentation/global/coupon_box.dart';

class StatisticsUsedPage extends StatefulWidget {
  const StatisticsUsedPage({super.key});

  @override
  State<StatisticsUsedPage> createState() => _StatisticsUsedPageState();
}

class _StatisticsUsedPageState extends State<StatisticsUsedPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<StatisticsBloc>(context).add(InitStatistics(couponStatus: CouponStatus.used));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StatisticsBloc, StatisticsState>(
        builder: (context, state) {
          List<Coupon> couponList = state.couponList
              .where(
                (element) => CouponStatus.stringToCouponStatus(
                  element.couponStatus,
                ).isUsed,
              )
              .toList();
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: couponList.isNotEmpty
                ? ListView.separated(
                    itemCount: couponList.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (context, index) {
                      return CouponBox(coupon: couponList[index]);
                    },
                  )
                : Center(
                    child: Text(
                      '현재 사용완료된 쿠폰이 없습니다',
                      style:
                          TextS.content().copyWith(color: ColorS.contentGray),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
