import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/challenge/challenge.dart';
import 'package:meokq_boss/presentation/bloc/statistics/statistics_bloc.dart';
import 'package:meokq_boss/presentation/global/challenge_box.dart';

class StatisticsIssuedPage extends StatefulWidget {
  const StatisticsIssuedPage({super.key});

  @override
  State<StatisticsIssuedPage> createState() => _StatisticsIssuedPageState();
}

class _StatisticsIssuedPageState extends State<StatisticsIssuedPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<StatisticsBloc>(context).add(InitStatistics());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StatisticsBloc, StatisticsState>(
        builder: (context, state) {
          List<Challenge> challengeList = state.statisticsList
              .where((element) => element.challengeStatus.isIssuedComplete)
              .toList();
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: challengeList.isNotEmpty
                ? ListView.separated(
                    itemCount: challengeList.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (context, index) {
                      return ChallengeBox(challenge: challengeList[index]);
                    },
                  )
                : Center(
                    child: Text(
                      '현재 발급완료된 쿠폰이 없습니다',
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
