import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/account_time_edit/account_time_edit_bloc.dart';
import 'package:meokq_boss/presentation/global/custom_drop_down_button.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/views/account/account_time_edit_argument.dart';
import 'package:meokq_boss/resources/resources.dart';

class AccountTimeEditPage extends StatefulWidget {
  static const id = 'account_time_edit_page';
  const AccountTimeEditPage({
    super.key,
  });

  @override
  State<AccountTimeEditPage> createState() => _AccountTimeEditPageState();
}

class _AccountTimeEditPageState extends State<AccountTimeEditPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
        ModalRoute.of(context)!.settings.arguments as AccountTimeEditArgument;

    BlocProvider.of<AccountTimeEditBloc>(context).add(
      InitAccountTime(
        argument: args,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        title: Text(
          '영업 시간',
          style: TextS.title2(),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<AccountTimeEditBloc, AccountTimeEditState>(
        builder: (context, state) {
          var hourList = <String>[];
          for (int i = 0; i <= 11; i++) {
            hourList.add('오전 ${i < 10 ? '0$i' : i}:00');
            hourList.add('오전 ${i < 10 ? '0$i' : i}:30');
          }

          for (int i = 0; i <= 11; i++) {
            hourList.add('오후 ${i < 10 ? '0$i' : i}:00');
            hourList.add('오후 ${i < 10 ? '0$i' : i}:30');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 1,
                color: ColorS.gray100,
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
                    onTap: () => context.read<AccountTimeEditBloc>().add(
                          ChangeBusinessDays(
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
                            context.read<AccountTimeEditBloc>().add(
                                  ChangeBusinessHour(
                                    hour: value ?? '',
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
                            context.read<AccountTimeEditBloc>().add(
                                  ChangeBusinessHour(
                                    hour: value ?? '',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MeokQButton(
                  onTap: () {
                    context
                        .read<AccountTimeEditBloc>()
                        .add(ChangeAccountTime());
                    Navigator.pop(context);
                  },
                  text: '완료',
                ),
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
