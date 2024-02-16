import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';
import 'package:meokq_boss/presentation/bloc/quest/quest_bloc.dart';
import 'package:meokq_boss/presentation/global/quest_box.dart';
import 'package:meokq_boss/presentation/views/quest/quest_detail/quest_detail_argument.dart';
import 'package:meokq_boss/presentation/views/quest/quest_detail/quest_detail_page.dart';

class QuestShowPage extends StatefulWidget {
  const QuestShowPage({super.key});

  @override
  State<QuestShowPage> createState() => _QuestShowPageState();
}

class _QuestShowPageState extends State<QuestShowPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<QuestBloc>(context).add(InitAllQuest());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<QuestBloc, QuestState>(
        listener: (context, state) {
          switch (state.questStatus) {
            case GetQuestStatus.failure:
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('퀘스트를 불러오지 못했습니다')),
              );
            case GetQuestStatus.success:
            case GetQuestStatus.init:
              break;
          }
        },
        child: BlocBuilder<QuestBloc, QuestState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async =>
                  BlocProvider.of<QuestBloc>(context).add(InitAllQuest()),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: state.questList.isNotEmpty
                    ? ListView.separated(
                        itemCount: state.questList.length,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 12,
                        ),
                        itemBuilder: (context, index) {
                          final quest = state.questList[index];
                          return GestureDetector(
                            onTap: () {
                              if (QuestStatus.stringToQuestStatus(
                                quest.questStatus,
                              ).isUnderReview) {
                                Navigator.of(context).pushNamed(
                                  QuestDetailPage.id,
                                  arguments: QuestDetailArgument(
                                    questId: quest.questId,
                                  ),
                                );
                              }
                            },
                            child: QuestBox(quest: quest),
                          );
                        },
                      )
                    : Center(
                        child: Text(
                          '현재 게시중인 퀘스트가 없습니다',
                          style: TextS.content()
                              .copyWith(color: ColorS.contentGray),
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
