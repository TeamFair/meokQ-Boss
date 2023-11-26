import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/store_information_apply/store_custom_text_field.dart';

class StoreStage1Page extends StatelessWidget {
  const StoreStage1Page({super.key});

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
            const StoreCustomTextField(
              storeTextInputType: StoreTextInputType.storeName,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            const StoreCustomTextField(
              storeTextInputType: StoreTextInputType.address,
              textInputType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            const StoreCustomTextField(
              storeTextInputType: StoreTextInputType.phone,
              textInputType: TextInputType.text,
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
