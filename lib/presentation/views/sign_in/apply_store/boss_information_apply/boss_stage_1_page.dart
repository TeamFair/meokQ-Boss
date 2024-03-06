import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/presentation/global/camera_bottom_sheet.dart';
import 'package:meokq_boss/presentation/global/custom_text_field.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/global/custom_drop_down_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class BossStage1Page extends StatefulWidget {
  const BossStage1Page({super.key});

  @override
  State<BossStage1Page> createState() => _BossStage1PageState();
}

class _BossStage1PageState extends State<BossStage1Page> {
  final TextEditingController businessNumberController = TextEditingController();
  final TextEditingController bossNameController = TextEditingController();
  final TextEditingController storeNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    businessNumberController.addListener(() {
      context.read<BossInformationBloc>().add(
            ChangeBusinessNumber(
              newText: businessNumberController.text,
            ),
          );
    });
    bossNameController.addListener(() {
      context.read<BossInformationBloc>().add(
            ChangeBossName(
              newText: bossNameController.text,
            ),
          );
    });
    storeNameController.addListener(() {
      context.read<BossInformationBloc>().add(
            ChangeStoreName(
              newText: storeNameController.text,
            ),
          );
    });
    addressController.addListener(() {
      context.read<BossInformationBloc>().add(
            ChangeAddress(
              newText: addressController.text,
            ),
          );
    });
    postalCodeController.addListener(() {
      context.read<BossInformationBloc>().add(
            ChangePostalCode(
              newText: postalCodeController.text,
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BossInformationBloc, BossInformationState>(
      builder: (context, state) {
        
        return ListView(
          children: [
            Container(
              height: 4,
              color: ColorS.buttonYellow,
              width: 195,
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
            CustomTextField(
              title: '영업신고증 고유번호',
              controller: businessNumberController,
              hintText: '제',
              suffixText: '호',
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
                leftPadding: 0,
                onTap: (value) => context
                    .read<BossInformationBloc>()
                    .add(ChangeBussinessType(businessType: value ?? '')),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '대표자',
              controller: bossNameController,
              hintText: '대표자명',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '영업소 명칭(상호명)',
              controller: storeNameController,
              hintText: '상호명',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '소재지',
              controller: addressController,
              hintText: '주소',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '우편번호',
              controller: postalCodeController,
              hintText: '우편번호',
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
                                imageType: ImageType.businessCertification,
                                imagePicker: ImagePicker.gallery,
                              ),
                            );
                        Navigator.pop(context);
                      },
                      secondTap: () {
                        context.read<BossInformationBloc>().add(
                              const AddImage(
                                imageType: ImageType.businessCertification,
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
