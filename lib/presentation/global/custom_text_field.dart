import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.textInputType,
    required this.title,
    required this.text,
    required this.hintText,
    required this.onChanged,
    this.suffixText,
  });

  final String title;

  final String text;

  final String hintText;

  final TextInputType? textInputType;

  final Function(String) onChanged;

  final String? suffixText;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = text;
    controller.selection =
        TextSelection.collapsed(offset: controller.text.length);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextS.caption1().copyWith(color: ColorS.applyGray),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(20, 15, 15, 7.5),
            decoration: ShapeDecoration(
              color: ColorS.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: TextField(
              controller: controller,
              style: TextS.content().copyWith(
                color: ColorS.gray400,
              ),
              onChanged: onChanged,
              keyboardType: textInputType,
              cursorColor: ColorS.applyGray,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: -13),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextS.content().copyWith(
                  color: ColorS.applyGray,
                ),
                suffixIcon: Text(
                  suffixText ?? '',
                  style: TextS.content().copyWith(
                    color: ColorS.applyGray,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
