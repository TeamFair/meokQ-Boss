import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/global/custom_text_field.dart';

class StoreStage1Page extends StatefulWidget {
  const StoreStage1Page({super.key});

  @override
  State<StoreStage1Page> createState() => _StoreStage1PageState();
}

class _StoreStage1PageState extends State<StoreStage1Page> {
  final TextEditingController storeNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    storeNameController.addListener(() {
      context.read<StoreInformationBloc>().add(
            ChangeStore(
              newText: storeNameController.text,
            ),
          );
    });

    addressController.addListener(() {
      context.read<StoreInformationBloc>().add(
            ChangeAddress(
              newText: addressController.text,
            ),
          );
    });

    phoneController.addListener(() {
      context.read<StoreInformationBloc>().add(
            ChangePhone(
              newText: phoneController.text,
            ),
          );
    });
  }

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
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '가게 정보를 입력해주세요 ',
                style: TextS.title1().copyWith(
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              title: '상호명',
              controller: storeNameController,
              hintText: 'ex) 커피크라운 안양점',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '가게주소',
              controller: addressController,
              hintText: 'ex) 경기도 안양시 만안구 안양동 88-1',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '가게 전화번호',
              controller: phoneController,
              hintText: 'ex) 010-1234-1234',
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MeokQButton(
                text: '다음',
                onTap: () {
                  context.read<StoreInformationBloc>().add(
                        const ChangeStage(stage: Stage.second),
                      );
                },
                canTap: state.canStage1ButtonTap,
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
