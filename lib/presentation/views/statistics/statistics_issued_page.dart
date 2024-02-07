import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/coupon/coupon.dart';
import 'package:meokq_boss/presentation/bloc/statistics/statistics_bloc.dart';
import 'package:meokq_boss/presentation/global/coupon_box.dart';

class StatisticsIssuedPage extends StatefulWidget {
  const StatisticsIssuedPage({super.key});

  @override
  State<StatisticsIssuedPage> createState() => _StatisticsIssuedPageState();
}

class _StatisticsIssuedPageState extends State<StatisticsIssuedPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<StatisticsBloc>(context).add(InitStatistics(couponStatus: CouponStatus.issued));
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
                ).isIssued,
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
                      '현재 발급완료된 쿠폰이 없습니다',
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
