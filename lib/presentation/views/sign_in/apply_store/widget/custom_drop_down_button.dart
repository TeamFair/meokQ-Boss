import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/resources/resources.dart';


class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: BlocBuilder<BossInformationBloc, BossInformationState>(
        builder: (context, state) {
          return DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              items: businessTypeList
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
              value: state.businessType,
              onChanged: (String? value) {
                context
                    .read<BossInformationBloc>()
                    .add(ChangeBussinessType(businessType: value ?? ''));
              },
              buttonStyleData: ButtonStyleData(
                height: 50,
                padding: const EdgeInsets.fromLTRB(0, 15, 15, 7.5),
                decoration: BoxDecoration(
                  color: ColorS.background,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              iconStyleData: IconStyleData(
                icon: SvgPicture.asset(Svgs.arrowUp),
              ),
              dropdownStyleData: DropdownStyleData(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 7.5),
                decoration: BoxDecoration(
                  color: ColorS.background,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 50,
                padding: EdgeInsets.only(right: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}