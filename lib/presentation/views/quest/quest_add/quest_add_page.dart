import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';
import 'package:meokq_boss/presentation/bloc/quest_add/quest_add_bloc.dart';
import 'package:meokq_boss/presentation/global/custom_tool_tip.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class QuestAddPage extends StatefulWidget {
  static const id = 'quest_add_page';
  const QuestAddPage({super.key});

  @override
  State<QuestAddPage> createState() => _QuestAddPageState();
}

class _QuestAddPageState extends State<QuestAddPage> {
  final questToolTipController = JustTheController();
  final rewardToolTipController = JustTheController();
  bool questToolTipOpen = false;
  bool rewardToolTipOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorS.background,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          '퀘스트 추가',
        ),
        centerTitle: true,
      ),
      body: BlocListener<QuestAddBloc, QuestAddState>(
        listener: ((context, state) {
          switch (state.applyState) {
            case ApplyState.init:
              break;
            case ApplyState.success:
              Navigator.pop(context, true);
            case ApplyState.failed:
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('퀘스트 등록을 실패하였습니다.')),
              );
          }
        }),
        child: BlocBuilder<QuestAddBloc, QuestAddState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  height: 220,
                  padding: const EdgeInsets.fromLTRB(20, 21, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '퀘스트 종류',
                              style: TextS.subtitle1().copyWith(
                                fontSize: 14,
                              ),
                            ),
                            CustomToolTip(
                              onTap: () {
                                if (questToolTipOpen) {
                                  questToolTipController.hideTooltip();
                                  questToolTipOpen = false;
                                } else {
                                  questToolTipController.showTooltip();
                                  questToolTipOpen = true;
                                }
                              },
                              controller: questToolTipController,
                              title: '퀘스트란?',
                              content: questContent,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: MissionType.values.map((missionType) {
                            return GestureDetector(
                              onTap: () => context.read<QuestAddBloc>().add(
                                    ChangeMissionType(missionType: missionType),
                                  ),
                              child: Container(
                                width: 100,
                                height: 40,
                                margin: const EdgeInsets.only(
                                  right: 9,
                                ),
                                decoration: ShapeDecoration(
                                  color: state.missionType == missionType
                                      ? ColorS.buttonYellow
                                      : ColorS.background,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    missionType.text,
                                    style: TextS.content().copyWith(
                                      color: ColorS.gray400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 80,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            QuestAddTextField(
                              onChanged: (text) =>
                                  context.read<QuestAddBloc>().add(
                                        ChangeText(
                                          text: text,
                                          textType: TextType.missionItem,
                                        ),
                                      ),
                              title: state.missionType.title,
                              text: state.missionItem,
                              hintText: state.missionType.hintText,
                              width: state.missionType.isFreeQuest ? 352 : 255,
                            ),
                            if (!state.missionType.isFreeQuest)
                              const SizedBox(
                                width: 17,
                              ),
                            if (!state.missionType.isFreeQuest)
                              QuestAddTextField(
                                onChanged: (text) =>
                                    context.read<QuestAddBloc>().add(
                                          ChangeText(
                                            text: text,
                                            textType: TextType.missionItemCount,
                                          ),
                                        ),
                                title: '개수',
                                text: state.missionItem,
                                hintText: '0',
                                width: 50,
                              ),
                            if (!state.missionType.isFreeQuest)
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 43, left: 8),
                                child: Text(
                                  '개',
                                  style: TextS.heading2()
                                      .copyWith(color: ColorS.gray400),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  color: Colors.white,
                  height: 220,
                  padding: const EdgeInsets.fromLTRB(21, 21, 19, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '보상',
                              style: TextS.subtitle1().copyWith(
                                fontSize: 14,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (rewardToolTipOpen) {
                                  rewardToolTipController.hideTooltip();
                                  rewardToolTipOpen = false;
                                } else {
                                  rewardToolTipController.showTooltip();
                                  rewardToolTipOpen = true;
                                }
                              },
                              child: JustTheTooltip(
                                controller: rewardToolTipController,
                                content: Container(
                                  width: 218,
                                  height: 100,
                                  padding: const EdgeInsets.all(14),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x26000000),
                                        blurRadius: 20,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        '보상이란?',
                                        style: TextS.button().copyWith(
                                          fontSize: 14,
                                          color: ColorS.gray400,
                                        ),
                                      ),
                                      Text(
                                        rewardContent,
                                        style: TextS.caption1()
                                            .copyWith(color: ColorS.gray400),
                                      ),
                                    ],
                                  ),
                                ),
                                child: SvgPicture.asset(
                                  Svgs.questionMarkIcon,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: RewardType.values.map((rewardType) {
                            return GestureDetector(
                              onTap: () => context.read<QuestAddBloc>().add(
                                    ChangeRewardType(rewardType: rewardType),
                                  ),
                              child: Container(
                                width: 70,
                                height: 40,
                                margin: const EdgeInsets.only(
                                  right: 9,
                                ),
                                decoration: ShapeDecoration(
                                  color: state.rewardType == rewardType
                                      ? ColorS.buttonYellow
                                      : ColorS.background,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    rewardType.text,
                                    style: TextS.content().copyWith(
                                      color: ColorS.gray400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 80,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            QuestAddTextField(
                              onChanged: (text) =>
                                  context.read<QuestAddBloc>().add(
                                        ChangeText(
                                          text: text,
                                          textType: TextType.rewardItem,
                                        ),
                                      ),
                              title: '보상 아이템',
                              text: state.rewardItem,
                              hintText: '제공할 보상을 입력하세요',
                              width: 255,
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            QuestAddTextField(
                              onChanged: (text) =>
                                  context.read<QuestAddBloc>().add(
                                        ChangeText(
                                          text: text,
                                          textType: TextType.reward,
                                        ),
                                      ),
                              title: state.rewardType.subTitle,
                              text: state.reward,
                              hintText: '0',
                              width: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 43, left: 8),
                              child: Text(
                                state.rewardType.subText,
                                style: TextS.heading2()
                                    .copyWith(color: ColorS.gray400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  '쿠폰 미리보기',
                  style: TextS.subtitle1().copyWith(
                    color: ColorS.gray400,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.fromLTRB(17, 9, 0, 9),
                  height: 95,
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.title,
                          style: TextS.heading1(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          state.subTitle,
                          style: TextS.caption2(),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MeokQButton(
                    onTap: () => context.read<QuestAddBloc>().add(
                          AddQuest(),
                        ),
                    text: '퀘스트 추가하기',
                    canTap: state.isButtonAble,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class QuestAddTextField extends StatelessWidget {
  const QuestAddTextField({
    super.key,
    required this.title,
    required this.text,
    required this.hintText,
    this.width = double.infinity,
    required this.onChanged,
    this.textInputType,
  });

  final String title;
  final String text;
  final String hintText;
  final double width;
  final TextInputType? textInputType;
  final Function(String text) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextS.subtitle1().copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(
              15,
              15,
              0,
              7.5,
            ),
            decoration: ShapeDecoration(
              color: ColorS.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: TextField(
              style: TextS.content().copyWith(
                color: ColorS.gray400,
              ),
              onChanged: onChanged,
              keyboardType: textInputType,
              cursorColor: ColorS.applyGray,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextS.content().copyWith(
                  color: ColorS.applyGray,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
