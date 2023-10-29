import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/presentation/bloc/tab_bar_controller/tab_bar_bloc.dart';
import 'package:meokq_boss/presentation/views/quest/quest_page.dart';

class QuestPageView extends StatefulWidget {
  const QuestPageView({super.key});

  @override
  State<QuestPageView> createState() => _QuestPageViewState();
}

class _QuestPageViewState extends State<QuestPageView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabBarBloc(), 
      child: const QuestPage(),
      );
  }
}