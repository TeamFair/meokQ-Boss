import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/boss_information_apply/custom_text_field.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/widget/custom_drop_down_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class Stage1Page extends StatefulWidget {
  const Stage1Page({super.key});

  @override
  State<Stage1Page> createState() => _Stage1PageState();
}

class _Stage1PageState extends State<Stage1Page> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BossInformationBloc, BossInformationState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
          child: ListView(
            children: [
              Text(
                '영업신고증 정보를 입력해주세요',
                style: TextS.title1().copyWith(
                  fontSize: 19,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextField(
                bossTextInputType: BossTextInputType.businessNumber,
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '영업신고증 가장 왼쪽, 제일 위에 있어요',
                style: TextS.body().copyWith(color: ColorS.gray200),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '영업의 종류',
                style: TextS.caption1().copyWith(color: ColorS.applyGray),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomDropDownButton(),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                bossTextInputType: BossTextInputType.bossName,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                bossTextInputType: BossTextInputType.storeName,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                bossTextInputType: BossTextInputType.address,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                bossTextInputType: BossTextInputType.postalCode,
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '영업신고증 첨부',
                style: TextS.caption1().copyWith(color: ColorS.applyGray),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () => context.read<BossInformationBloc>().add(
                      const AddImage(
                        imagePicker: ImagePicker.gallery,
                        imageType: ImageType.businessCertification,
                      ),
                    ),
                child: Container(
                  height: 197,
                  decoration: ShapeDecoration(
                    color: ColorS.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: state.businessCertificationUrl.isEmpty
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
                          File(state.businessCertificationUrl),
                          fit: BoxFit.fill,
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MeokQButton(
                onTap: () => context.read<BossInformationBloc>().add(
                      const ChangeStage(
                        stage: Stage.second,
                      ),
                    ),
                text: '다음',
                canTap: state.stage1Condition,
              ),
              const SizedBox(
                height: 42,
              ),
            ],
          ),
        );
      },
    );
  }
}
