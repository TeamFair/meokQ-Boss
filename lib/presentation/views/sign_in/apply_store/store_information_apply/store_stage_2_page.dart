import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/widget/custom_drop_down_button.dart';

class StoreStage2Page extends StatelessWidget {
  const StoreStage2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreInformationBloc, StoreInformationState>(
      builder: (context, state) {
        var hourList = <String>[];
        for (int i = 0; i <= 11; i++) {
          hourList.add('오전 $i:00');
          hourList.add('오전 $i:30');
        }

        for (int i = 0; i <= 11; i++) {
          hourList.add('오후 $i:00');
          hourList.add('오후 $i:30');
        }

        print(hourList);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4,
              color: ColorS.buttonYellow,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '영업 요일을 설정해주세요',
                style: TextS.title1().copyWith(
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: week.map((day) {
                return GestureDetector(
                  onTap: () => context.read<StoreInformationBloc>().add(
                        ChangeBussinessDays(
                          day: day,
                        ),
                      ),
                  child: Container(
                    width: day == '전체' ? 48 : 34,
                    height: 34,
                    margin: EdgeInsets.only(
                      left: day == '전체' ? 20 : 7,
                    ),
                    decoration: ShapeDecoration(
                      color: state.businessDays.contains(day)
                          ? ColorS.buttonYellow
                          : ColorS.background,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        day,
                        style: TextS.content().copyWith(
                          color: ColorS.gray400,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '몇시부터 몇시까지 영업하나요?',
                style: TextS.title1().copyWith(
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: CustomDropDownButton(
                      dropDownList: hourList,
                      selectedValue: state.open,
                      onTap: (value) =>
                          context.read<StoreInformationBloc>().add(
                                ChangeBussinessHour(
                                  time: value,
                                  businessHour: BusinessHour.open,
                                ),
                              ),
                      leftPadding: 0,
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: CustomDropDownButton(
                      dropDownList: hourList,
                      selectedValue: state.close,
                      onTap: (value) =>
                          context.read<StoreInformationBloc>().add(
                                ChangeBussinessHour(
                                  time: value,
                                  businessHour: BusinessHour.close,
                                ),
                              ),
                      leftPadding: 0,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            MeokQTwoButton(
              secondText: '다음',
              firstButtonTap: () => context.read<StoreInformationBloc>().add(
                    const ChangeStage(
                      stage: Stage.first,
                    ),
                  ),
              secondButtonTap: () {
                context.read<StoreInformationBloc>().add(
                      const ChangeStage(stage: Stage.third),
                    );
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
