import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';

class CameraBottomSheet extends StatelessWidget {
  const CameraBottomSheet({
    super.key,
    required this.firstTap,
    required this.secondTap,
  });

  final Function() firstTap;

  final Function() secondTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      width: double.infinity,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        color: ColorS.gray100,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          GestureDetector(
            onTap: firstTap,
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: Text(
                '앨범에서 가져오기',
                style: TextS.subtitle2().copyWith(color: ColorS.blue),
              ),
            ),
          ),
          Container(
            color: ColorS.gray200,
            height: 1,
          ),
          GestureDetector(
            onTap: secondTap,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                '사진 촬영하기',
                style: TextS.subtitle2().copyWith(color: ColorS.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
