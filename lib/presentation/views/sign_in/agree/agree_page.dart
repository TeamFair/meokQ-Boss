import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/resources/resources.dart';

class AgreePage extends StatefulWidget {
  static const id = 'agree_page';
  const AgreePage({super.key});

  @override
  State<AgreePage> createState() => _AgreePageState();
}

class _AgreePageState extends State<AgreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        title: Text(
          '이용약관 및 개인정보 이용 동의',
          style: TextS.title2(),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Svgs.checkInWithCircleIcon),
                const SizedBox(
                  width: 7,
                ),
                TextButton(onPressed: () {}, child: Text('모두 동의합니다.', style: TextS.content(),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
