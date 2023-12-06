import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/global/custom_text_field.dart';

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
            CustomTextField(
              title: '상호명',
              text: state.storeName,
              hintText: 'ex) 커피크라운 안양점',
              onChanged: (text) => context.read<StoreInformationBloc>().add(
                    ChangeStore(
                      newText: text,
                    ),
                  ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '가게주소',
              text: state.address,
              hintText: 'ex) 경기도 안양시 만안구 안양동 88-1',
              onChanged: (text) => context.read<StoreInformationBloc>().add(
                    ChangeAddress(
                      newText: text,
                    ),
                  ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: '가게 전화번호',
              text: state.phone,
              hintText: '숫자만 입력',
              textInputType: TextInputType.phone,
              onChanged: (text) => context.read<StoreInformationBloc>().add(
                    ChangePhone(
                      newText: text,
                    ),
                  ),
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
