import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';
import 'package:meokq_boss/presentation/bloc/quest/quest_bloc.dart';
import 'package:meokq_boss/presentation/global/quest_box.dart';
import 'package:meokq_boss/presentation/views/quest/quest_detail/quest_detail_argument.dart';
import 'package:meokq_boss/presentation/views/quest/quest_detail/quest_detail_page.dart';

class QuestCheckPage extends StatefulWidget {
  const QuestCheckPage({super.key});

  @override
  State<QuestCheckPage> createState() => _QuestCheckPageState();
}

class _QuestCheckPageState extends State<QuestCheckPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<QuestBloc>(context).add(InitAllQuest());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuestBloc, QuestState>(
        builder: (context, state) {
          List<GetQuestVO> questList = state.questList
              .where((element) => QuestStatus.stringToQuestStatus(element.questStatus).isChecking)
              .toList();
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: questList.isNotEmpty
                ? ListView.separated(
                    itemCount: questList.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (context, index) {
                      final quest = questList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            QuestDetailPage.id,
                            arguments: QuestDetailArgument(questId: quest.questId),
                          );
                        },
                        child: QuestBox(quest: quest),
                      );
                    },
                  )
                : Center(
                    child: Text(
                      '현재 검토중인 퀘스트가 없습니다',
                      style:
                          TextS.content().copyWith(color: ColorS.contentGray),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
