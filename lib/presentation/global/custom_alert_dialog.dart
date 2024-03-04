import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    this.title = '',
    this.contents = '',
    this.cancelText = '취소',
    this.confirmText = '확인',
    required this.confirmCallback,
    this.cancelCallback,
    this.confirmButtonColor = ColorS.notiYellow,
    this.height = 168,
    this.secondContent,
    this.isOnebutton = false,
  });

  /// 다이얼로그의 제목
  final String title;

  /// 다이얼로그 본문 내용
  final String contents;

  /// 취소 버튼의 텍스트
  final String cancelText;

  /// 확인 버튼의 텍스트
  final String confirmText;

  /// 확인 버튼을 눌렀을 때 어떻게 동작시킬지에 대한 함수
  final VoidCallback confirmCallback;

  /// 취소 버튼을 눌렀을 때 어떻게 동작시킬지에 대한 함수
  final VoidCallback? cancelCallback;

  /// 확인 버튼의 색상
  final Color confirmButtonColor;

  final String? secondContent;

  final int height;

  // 버튼이 하나만 필요한 경우
  final bool isOnebutton;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Container(
        width: 289,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextS.heading2(),
            ),
            if (contents != '')
              const SizedBox(
                height: 8,
              ),
            if (contents != '')
              Text(
                contents,
                textAlign: TextAlign.center,
                style: TextS.caption1().copyWith(color: ColorS.gray400),
              ),
            if (secondContent != null)
              const SizedBox(
                height: 4,
              ),
            if (secondContent != null)
              Text(
                secondContent!,
                style: TextS.heading1().copyWith(
                  fontSize: 13,
                  color: ColorS.gray400,
                ),
              ),
            const SizedBox(
              height: 24,
            ),
            isOnebutton
                ? MeokQButton(onTap: confirmCallback, text: confirmText)
                : MeokQTwoButton(
                    firstText: cancelText,
                    secondText: confirmText,
                    firstButtonTap: cancelCallback,
                    secondButtonTap: confirmCallback,
                  ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
