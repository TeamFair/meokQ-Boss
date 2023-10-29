import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/resources/resources.dart';

class QuestPage extends StatefulWidget {
  static const id = 'quest_page';
  const QuestPage({super.key});

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '퀘스트',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Svgs.plusIcon),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Svgs.settingIcon),
          ),
        ],
      ),
    );
  }
}
