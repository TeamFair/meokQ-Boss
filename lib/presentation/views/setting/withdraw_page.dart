import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class WithdrawPage extends StatefulWidget {
  static const id = 'withdraw_page';
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        centerTitle: true,
        title: const Text(
          '회원탈퇴',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 132,
            ),
            SvgPicture.asset(
              Svgs.smileIconWithBg,
              width: 92,
              height: 92,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              '맛Q 탈퇴 전 확인하세요',
              textAlign: TextAlign.center,
              style: TextS.heading1().copyWith(fontSize: 23),
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              '탈퇴하시면 모든 데이터는 복구가 불가능합니다.',
              textAlign: TextAlign.center,
              style: TextS.content().copyWith(color: ColorS.gray400),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              width: double.infinity,
              height: 105,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: ShapeDecoration(
                color: ColorS.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                '고객님들이 진행중인 퀘스트가 있을 수 있어요\n회원탈퇴를 원할 시 고객센터로 문의해주세요\nfindtastyquest@gmail.com',
                style: TextS.caption1().copyWith(
                  color: ColorS.captionGray,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            MeokQTwoButton(
              padding: 0,
              firstText: '뒤로가기',
              secondText: '탈퇴하기',
              firstButtonTap: () => Navigator.pop(context, false),
              secondButtonTap: () => Navigator.pop(context, true),
            ),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
