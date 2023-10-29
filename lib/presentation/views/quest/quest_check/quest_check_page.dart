import 'package:flutter/widgets.dart';

class QuestCheckPage extends StatefulWidget {
  const QuestCheckPage({super.key});

  @override
  State<QuestCheckPage> createState() => _QuestCheckPageState();
}

class _QuestCheckPageState extends State<QuestCheckPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('검토중 페이지'),
    );
  }
}