import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';

// TODO: 
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.bossTextInputType,
    required this.textInputType,
  });

  final BossTextInputType bossTextInputType;

  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bossTextInputType.text,
            style: TextS.caption1().copyWith(color: ColorS.applyGray),
          ),
          const SizedBox(
            height: 5,
          ),
          BlocBuilder<BossInformationBloc, BossInformationState>(
            builder: (context, state) {
              return Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 7.5),
                decoration: ShapeDecoration(
                  color: ColorS.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: TextField(
                  style: TextS.content().copyWith(
                    color: ColorS.gray400,
                  ),
                  onChanged: (text) => context.read<BossInformationBloc>().add(
                        ChangeTextField(
                          newText: text,
                          bossTextInputType: bossTextInputType,
                        ),
                      ),
                  keyboardType: textInputType,
                  cursorColor: ColorS.applyGray,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: bossTextInputType.inTextField,
                    hintStyle: TextS.content().copyWith(
                      color: ColorS.applyGray,
                    ),
                    suffixIcon: Text(
                      bossTextInputType.isBusinessNumber ? '호' : '',
                      style: TextS.content().copyWith(
                        color: ColorS.applyGray,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
