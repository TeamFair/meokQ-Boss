import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/presentation/global/custom_alert_dialog.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/boss_information_apply/boss_stage_1_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/boss_information_apply/boss_stage_2_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class BossInformationApplyPage extends StatelessWidget {
  static const id = 'boss_information_apply_page';
  const BossInformationApplyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return CustomAlertDialog(
                  title: '지금 나가면 저장이 되지 않아요.',
                  contents: '작성중 나가면 다시 처음부터 작성해야 돼요.\n그래도 나가시겠어요?',
                  confirmText: '나가기',
                  confirmCallback: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                );
              },
            );
          },
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        title: Text(
          '사업자정보 입력',
          style: TextS.title2(),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: BlocBuilder<BossInformationBloc, BossInformationState>(
        builder: (context, state) {
          switch (state.stage) {
            case Stage.first:
              return const BossStage1Page();
            case Stage.second:
              return const BossStage2Page();
          }
        },
      ),
    );
  }
}
