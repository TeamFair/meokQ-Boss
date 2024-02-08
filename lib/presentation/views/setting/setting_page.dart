import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/setting/setting_bloc.dart';
import 'package:meokq_boss/presentation/views/login/login_page.dart';

class SettingPage extends StatefulWidget {
  static const id = 'setting_page';
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
    context.read<SettingBloc>().add(InitState());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      body: BlocListener<SettingBloc, SettingState>(
        listener: (context, state) {
          switch (state.userState) {
            case UserState.login:
              break;
            case UserState.logout:
            case UserState.withdraw:
              Navigator.pushNamedAndRemoveUntil(
                context,
                LoginPage.id,
                (route) => false,
              );
          }
        },
        child: BlocBuilder<SettingBloc, SettingState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 0, 7),
                  child: Text(
                    '서비스 동의',
                    style: TextS.caption1().copyWith(
                      color: ColorS.applyGray,
                    ),
                  ),
                ),
                SettingAgreementContainer(
                  agreement: Agreement.collection,
                  value: state.collectionAgreement,
                ),
                const SizedBox(
                  height: 1,
                ),
                SettingAgreementContainer(
                  agreement: Agreement.email,
                  value: state.emailAgreement,
                ),
                const SizedBox(
                  height: 1,
                ),
                SettingAgreementContainer(
                  agreement: Agreement.sms,
                  value: state.smsAgreement,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 18, 0, 7),
                  child: Text(
                    '계정',
                    style: TextS.caption1().copyWith(
                      color: ColorS.applyGray,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<SettingBloc>().add(TapLogoutButton());
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 64,
                    width: double.infinity,
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '로그아웃',
                      style: TextS.subtitle2(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<SettingBloc>().add(TapLogoutButton());
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 64,
                    width: double.infinity,
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '회원탈퇴',
                      style: TextS.subtitle2().copyWith(color: ColorS.red),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class SettingAgreementContainer extends StatelessWidget {
  const SettingAgreementContainer({
    super.key,
    required this.agreement,
    required this.value,
  });

  final Agreement agreement;

  final bool value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 74,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 43,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  agreement.title,
                  style: TextS.subtitle2(),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  agreement.content,
                  style: TextS.caption2(),
                ),
              ],
            ),
          ),
          CupertinoSwitch(
            activeColor: ColorS.buttonYellow,
            trackColor: ColorS.commentGray,
            value: value,
            onChanged: (value) {
              context
                  .read<SettingBloc>()
                  .add(TapAgreement(agreement: agreement));
            },
          ),
        ],
      ),
    );
  }
}
