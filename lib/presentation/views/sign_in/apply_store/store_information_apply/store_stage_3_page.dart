import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/global/camera_bottom_sheet.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class StoreStage3Page extends StatelessWidget {
  const StoreStage3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoreInformationBloc, StoreInformationState>(
      listener: (context, state) {
        switch (state.applyState) {
          case ApplyState.init:
            break;
          case ApplyState.success:
            Navigator.pop(context, true);
          case ApplyState.failed:
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('마켓 등록을 실패하였습니다.')),
            );
        }
      },
      child: BlocBuilder<StoreInformationBloc, StoreInformationState>(
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
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                        ),
                      ),
                      builder: (childContext) => CameraBottomSheet(
                        firstTap: () {
                          context
                              .read<StoreInformationBloc>()
                              .add(AddImageFromGallery());
                          Navigator.pop(context);
                        },
                        secondTap: () {
                          context
                              .read<StoreInformationBloc>()
                              .add(AddImageFromCamera());
                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
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
                secondButtonTap: () async {
                  context.read<StoreInformationBloc>().add(
                        StoreApply(),
                      );
                },
              ),
              const SizedBox(
                height: 42,
              ),
            ],
          );
        },
      ),
    );
  }
}
