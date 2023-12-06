import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/presentation/bloc/statistics/statistics_bloc.dart';
import 'package:meokq_boss/presentation/bloc/tab_bar_controller/tab_bar_bloc.dart';
import 'package:meokq_boss/presentation/views/statistics/statistics_page.dart';

class StatisticsPageView extends StatelessWidget {
  const StatisticsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TabBarBloc>(
        create: (context) => TabBarBloc(), 
        ),
        // BlocProvider<StatisticsBloc>(
        // create: (context) => StatisticsBloc(), 
        // ),
      ],
      child: const StatisticsPage(),
    );
  }
}