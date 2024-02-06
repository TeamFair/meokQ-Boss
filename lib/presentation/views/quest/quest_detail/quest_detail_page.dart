import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/quest_detail/quest_detail_bloc.dart';
import 'package:meokq_boss/presentation/global/custom_alert_dialog.dart';
import 'package:meokq_boss/presentation/global/custom_tool_tip.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/presentation/views/quest/quest_detail/quest_detail_argument.dart';
import 'package:meokq_boss/resources/resources.dart';

class QuestDetailPage extends StatefulWidget {
  static const id = 'quest_detail_page';
  const QuestDetailPage({
    super.key,
  });

  @override
  State<QuestDetailPage> createState() => _QuestDetailPageState();
}

class _QuestDetailPageState extends State<QuestDetailPage> {
  final toolTipController = JustTheController();
  bool toolTipOpen = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
        ModalRoute.of(context)!.settings.arguments as QuestDetailArgument;

    BlocProvider.of<QuestDetailBloc>(context).add(
      InitQuestDetailState(
        questId: args.questId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorS.background,
      appBar: AppBar(
        title: const Text(
          '퀘스트 상태',
        ),
        titleTextStyle: TextS.title2(),
        centerTitle: true,
        elevation: 1,
      ),
      body: BlocBuilder<QuestDetailBloc, QuestDetailState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 19,
                ),
                Text(
                  '퀘스트 내용',
                  style: TextS.subtitle1().copyWith(
                    color: ColorS.gray400,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(17, 9, 0, 9),
                  height: 85,
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.quest?.reward.content ?? '',
                          style: TextS.heading1(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          state.quest?.mission.content ?? '',
                          style: TextS.caption2(),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '퀘스트의 미션 및 보상은 변경이 불가합니다.\n이에 관해 질문이 있을 경우 고객센터로 연락해 주세요.',
                  style: TextS.caption2().copyWith(
                    color: ColorS.commentGray,
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                SizedBox(
                  height: 24,
                  child: Row(
                    children: [
                      Text(
                        '퀘스트 기간 설정',
                        style: TextS.subtitle1().copyWith(
                          fontSize: 14,
                          color: ColorS.gray400,
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Container(
                        width: 89,
                        height: 20,
                        padding: const EdgeInsets.all(4),
                        decoration: ShapeDecoration(
                          color: ColorS.badgeRed,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          '남은 이용권 ${state.ticketAccount}개',
                          textAlign: TextAlign.center,
                          style: TextS.badge01().copyWith(
                            color: ColorS.red,
                          ),
                        ),
                      ),
                      const Spacer(),
                      CustomToolTip(
                        onTap: () {
                          if (toolTipOpen) {
                            toolTipController.hideTooltip();
                            toolTipOpen = false;
                          } else {
                            toolTipController.showTooltip();
                            toolTipOpen = true;
                          }
                        },
                        controller: toolTipController,
                        title: '이용권이란?',
                        content: passContent,
                        width: 279,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(17, 9, 0, 9),
                  height: 67,
                  width: double.infinity,
                  child: Center(
                    child: SizedBox(
                      height: 32,
                      width: 150,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (state.questPeriod > 1) {
                                context.read<QuestDetailBloc>().add(
                                      ChangeQuestPeriod(
                                        questPeriod: state.questPeriod - 1,
                                      ),
                                    );
                              }
                            },
                            child: Container(
                              width: 32,
                              height: 32,
                              padding: const EdgeInsets.all(7),
                              decoration: const ShapeDecoration(
                                color: ColorS.background,
                                shape: OvalBorder(),
                              ),
                              child: SvgPicture.asset(
                                Svgs.minusIcon,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            '${state.questPeriod}개',
                            style: TextS.subtitle1(),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (state.questPeriod <
                                  (state.ticketAccount ?? 0)) {
                                context.read<QuestDetailBloc>().add(
                                      ChangeQuestPeriod(
                                        questPeriod: state.questPeriod + 1,
                                      ),
                                    );
                              }
                            },
                            child: Container(
                              width: 32,
                              height: 32,
                              padding: const EdgeInsets.all(7),
                              decoration: const ShapeDecoration(
                                color: ColorS.background,
                                shape: OvalBorder(),
                              ),
                              child: SvgPicture.asset(Svgs.plusIcon),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '퀘스트가 만료 및 삭제가 되더라도 “진행중", “다시도전” 상태인\n유저의 퀘스트는 완료시켜야 할 의무가 있습니다.',
                  style: TextS.caption2().copyWith(
                    color: ColorS.commentGray,
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                GestureDetector(
                  onTap: () =>
                      context.read<QuestDetailBloc>().add(DeleteQuest()),
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    padding: const EdgeInsets.all(15),
                    height: 50,
                    width: double.infinity,
                    child: Text(
                      '퀘스트 삭제하기',
                      style: TextS.content().copyWith(color: ColorS.red),
                    ),
                  ),
                ),
                const Spacer(),
                MeokQTwoButton(
                  firstText: '이용권 구매하기',
                  secondText: '게시하기',
                  padding: 0,
                  firstButtonTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomAlertDialog(
                          title: '현재 지원되지 않는 서비스입니다',
                          contents: '자세한 사항은 고객센터에 문의해주세요',
                          confirmText: '확인',
                          confirmCallback: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
                  },
                  secondButtonTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomAlertDialog(
                          height: 184,
                          title: '퀘스트를 게시하시겠습니까?',
                          secondContent: '게시 기간: ${state.questPeriod * 30}일',
                          contents: '이용권 한 개당 30일 게시됩니다\n되돌릴 수 없으니 신중히 선택해주세요',
                          confirmText: '확인',
                          confirmCallback: () {
                            context.read<QuestDetailBloc>().add(PostQuest());
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
