import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/resources/resources.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.dropDownList,
    required this.selectedValue,
    required this.onTap,
    this.leftPadding = 15,
  });

  final List<String> dropDownList;

  final String selectedValue;

  final Function(String) onTap;

  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items: dropDownList
            .map(
              (String item) => DropdownMenuItem<String>(
                alignment: Alignment.centerLeft,
                value: item,
                child: Text(
                  item,
                  style: TextS.content().copyWith(
                    color: ColorS.applyGray,
                  ),
                ),
              ),
            )
            .toList(),
        value: selectedValue,
        onChanged: (String? value) => onTap(value ?? ''),
        buttonStyleData: ButtonStyleData(
          height: 50,
          padding: EdgeInsets.fromLTRB(leftPadding, 15, 15, 15),
          decoration: BoxDecoration(
            color: ColorS.background,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        iconStyleData: IconStyleData(
          icon: SvgPicture.asset(Svgs.arrowDown),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 250,
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 7.5),
          decoration: BoxDecoration(
            color: ColorS.background,
            borderRadius: BorderRadius.circular(12),
          ),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all(6),
            thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 50,
          padding: EdgeInsets.only(right: 14),
        ),
      ),
    );
  }
}
