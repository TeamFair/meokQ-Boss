import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/boss_information_apply/boss_custom_text_field.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/widget/custom_drop_down_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class BossStage1Page extends StatelessWidget {
  const BossStage1Page({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.5;
    return BlocBuilder<BossInformationBloc, BossInformationState>(
      builder: (context, state) {
        print(width);
        return ListView(
          children: [
            Container(
              height: 4,
              color: ColorS.buttonYellow,
              width: width,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '영업신고증 정보를 입력해주세요',
                style: TextS.title1().copyWith(
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const BossCustomTextField(
              bossTextInputType: BossTextInputType.businessNumber,
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '영업신고증 가장 왼쪽, 제일 위에 있어요',
                style: TextS.body().copyWith(color: ColorS.gray200),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '영업의 종류',
                style: TextS.caption1().copyWith(color: ColorS.applyGray),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomDropDownButton(
                dropDownList: businessTypeList,
                selectedValue: state.businessType,
                onTap: (value) => context
                    .read<BossInformationBloc>()
                    .add(ChangeBussinessType(businessType: value)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const BossCustomTextField(
              bossTextInputType: BossTextInputType.bossName,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            const BossCustomTextField(
              bossTextInputType: BossTextInputType.storeName,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            const BossCustomTextField(
              bossTextInputType: BossTextInputType.address,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            const BossCustomTextField(
              bossTextInputType: BossTextInputType.postalCode,
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '영업신고증 첨부',
                style: TextS.caption1().copyWith(color: ColorS.applyGray),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
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
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MeokQButton(
                onTap: () => context.read<BossInformationBloc>().add(
                      const ChangeStage(
                        stage: Stage.second,
                      ),
                    ),
                text: '다음',
                canTap: true,
              ),
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
