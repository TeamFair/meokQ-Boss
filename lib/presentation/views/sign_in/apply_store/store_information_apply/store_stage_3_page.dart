import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class StoreStage3Page extends StatelessWidget {
  const StoreStage3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreInformationBloc, StoreInformationState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4,
              color: ColorS.buttonYellow,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '가게 로고를 넣어주세요',
                style: TextS.title1().copyWith(
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: GestureDetector(
                onTap: () => context.read<StoreInformationBloc>().add(
                      AddImage(),
                    ),
                child: Container(
                  height: 98,
                  width: 98,
                  decoration: const BoxDecoration(
                    color: ColorS.background,
                    shape: BoxShape.circle,
                  ),
                  child: state.logoUrl.isEmpty
                      ? SvgPicture.asset(Svgs.plusInCircleIcon)
                      : ClipOval(
                          child: Image.file(
                            File(state.logoUrl),
                            fit: BoxFit.fill,
                          ),
                        ),
                ),
              ),
            ),
            const Spacer(),
            MeokQTwoButton(
              secondText: '완료',
              firstButtonTap: () => context.read<StoreInformationBloc>().add(
                    const ChangeStage(
                      stage: Stage.second,
                    ),
                  ),
              secondButtonCanTap: state.canStage3ButtonTap,
              secondButtonTap: () {
                context.read<StoreInformationBloc>().add(
                      StoreApply(),
                    );
                Navigator.pop(context, true);
              },
            ),
            const SizedBox(
              height: 42,
            ),
          ],
        );
      },
    );
  }
}
