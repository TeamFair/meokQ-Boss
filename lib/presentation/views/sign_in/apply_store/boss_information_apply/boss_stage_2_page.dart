import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/presentation/global/camera_bottom_sheet.dart';
import 'package:meokq_boss/presentation/global/custom_text_field.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class BossStage2Page extends StatefulWidget {
  const BossStage2Page({super.key});

  @override
  State<BossStage2Page> createState() => _BossStage2PageState();
}

class _BossStage2PageState extends State<BossStage2Page> {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController birthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<BossInformationBloc, BossInformationState>(
      listener: (context, state) {
        switch (state.applyState) {
          case ApplyState.init:
            break;
          case ApplyState.success:
            Navigator.pop(context, true);
          case ApplyState.failed:
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('사업자 등록을 실패하였습니다.')),
            );
        }
      },
      child: BlocBuilder<BossInformationBloc, BossInformationState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 4,
                color: ColorS.buttonYellow,
                width: MediaQuery.of(context).size.width * 0.9,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '본인 확인을 위해 신분증 정보를 입력해주세요',
                  style: TextS.title1().copyWith(
                    fontSize: 19,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                title: '성함',
                controller: userNameController,
                hintText: '대표자명',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                title: '생년월일',
                controller: birthController,
                hintText: '생년월일',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'ex) 2023년 12월 25일 생이라면 \'2023-12-25\'',
                  style: TextS.body().copyWith(color: ColorS.gray200),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '신분증 첨부',
                  style: TextS.caption1().copyWith(color: ColorS.applyGray),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          context.read<BossInformationBloc>().add(
                                const AddImage(
                                  imageType: ImageType.identification,
                                  imagePicker: ImagePicker.gallery,
                                ),
                              );
                          Navigator.pop(context);
                        },
                        secondTap: () {
                          context.read<BossInformationBloc>().add(
                                const AddImage(
                                  imageType: ImageType.identification,
                                  imagePicker: ImagePicker.camera,
                                ),
                              );
                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 197,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: ColorS.background,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: state.identificationUrl.isEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(Svgs.plusInCircleIcon),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '이미지 추가',
                                style: TextS.caption1()
                                    .copyWith(color: ColorS.applyGray),
                              ),
                            ],
                          )
                        : Image.file(
                            File(state.identificationUrl),
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '주민등록번호 뒤 7자리가 기재된 공간 마스킹 필요\n주민등록번호 뒷자리를 지우지 않은 신분증은 즉시 파기되며 요청 반려',
                  style: TextS.body().copyWith(
                    color: ColorS.gray200,
                  ),
                ),
              ),
              const Spacer(),
              MeokQTwoButton(
                secondText: '완료',
                firstButtonTap: () => context.read<BossInformationBloc>().add(
                      const ChangeStage(
                        stage: Stage.first,
                      ),
                    ),
                secondButtonTap: () {
                  context.read<BossInformationBloc>().add(
                        WritingCompleted(),
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
