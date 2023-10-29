import 'package:flutter/material.dart';
import 'package:meokq_boss/data/model/quest.dart';
import 'package:meokq_boss/presentation/global/quest_box.dart';

class QuestShowPage extends StatefulWidget {
  const QuestShowPage({super.key});

  @override
  State<QuestShowPage> createState() => _QuestShowPageState();
}

class _QuestShowPageState extends State<QuestShowPage> {
  // TODO: 백앤드 스키마 나오면 그때 다시 수정해서 api에서 받아오는 식으로 정리
  // bloc으로 받아오기
  List<Quest> questList = const [
    Quest(id: 0, reward: '아메리카노 50% 할인권', mission: '오후 12시 전에 아메리카노 2잔 주문'),
    Quest(id: 1, reward: '카페라떼 70% 할인권', mission: '빵 2종류 이상 구매 시'),
    Quest(id: 2, reward: '랜덤 조각 케이크 무료 증정권', mission: '가게 후기 SNS에 포스팅 완료 시'),
    Quest(id: 3, reward: '탕수육 무료 사이즈업', mission: '짜장면 3개 이상 주문 시'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.separated(
          itemCount: questList.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 12,
          ),
          itemBuilder: (context, index) => QuestBox(quest: questList[index]),
        ),
      ),
    );
  }
}
