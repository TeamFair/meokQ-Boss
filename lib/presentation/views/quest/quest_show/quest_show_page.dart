import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/quest/quest_bloc.dart';
import 'package:meokq_boss/presentation/global/quest_box.dart';

class QuestShowPage extends StatefulWidget {
  const QuestShowPage({super.key});

  @override
  State<QuestShowPage> createState() => _QuestShowPageState();
}

class _QuestShowPageState extends State<QuestShowPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<QuestBloc>(context).add(InitQuest());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuestBloc, QuestState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: state.questList.isNotEmpty
                ? ListView.separated(
                    itemCount: state.questList.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (context, index) =>
                        QuestBox(quest: state.questList[index]),
                  )
                : Center(
                    child: Text(
                      '현재 게시중인 퀘스트가 없습니다',
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
