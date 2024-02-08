import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/coupon/coupon.dart';
import 'package:meokq_boss/resources/resources.dart';

class CouponBox extends StatelessWidget {
  const CouponBox({super.key, required this.coupon});

  final Coupon coupon;

  @override
  Widget build(BuildContext context) {
    CouponStatus couponStatus =
        CouponStatus.stringToCouponStatus(coupon.couponStatus);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 95,
      child: Stack(
        children: [
          SvgPicture.asset(
            Svgs.challengeButton,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        coupon.reward.content ?? '',
                        style: TextS.heading1(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        coupon.missions[0].content ?? '',
                        style: TextS.caption2(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                          dateFormat(coupon.useDate),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor(couponStatus),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          couponStatus.text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor(couponStatus),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      Container(
                        width: 50,
                        height: 22,
                        margin: const EdgeInsets.symmetric(horizontal: 22),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: ShapeDecoration(
                          color: ColorS.background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          coupon.userNickname,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: ColorS.gray400,
                            fontSize: 11,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color textColor(CouponStatus couponStatus) => switch (couponStatus) {
        CouponStatus.issued => ColorS.blue,
        CouponStatus.used => ColorS.red,
        _ => ColorS.gray400,
      };

  String dateFormat(String date) {
    DateTime dateTime = DateTime.parse(date);

    return DateFormat('M/d(E)', 'ko').format(dateTime);
  }
}
