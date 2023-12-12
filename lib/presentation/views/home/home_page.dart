import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/presentation/bloc/bottom_navigation_controller/bnc_bloc.dart';
import 'package:meokq_boss/presentation/views/account/account_page_view.dart';
import 'package:meokq_boss/presentation/views/challenge/challenge_page_view.dart';
import 'package:meokq_boss/presentation/views/quest/quest_page_view.dart';
import 'package:meokq_boss/presentation/views/statistics/statistics_page_view.dart';
import 'package:meokq_boss/resources/resources.dart';

class HomePage extends StatefulWidget {
  static const id = 'home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pageRouteList = const [
    QuestPageView(),
    ChallengePageView(),
    StatisticsPageView(),
    AccountPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex = BlocProvider.of<BNCBloc>(context).state.tabIndex;
    return Scaffold(
      body: pageRouteList[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                currentIndex == 0 ? Svgs.questOnIcon : Svgs.questOffIcon,
              ),
              label: '퀘스트',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                currentIndex == 1
                    ? Svgs.challengeOnIcon
                    : Svgs.challengeOffIcon,
              ),
              label: '도전',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                currentIndex == 2
                    ? Svgs.statisticsOnIcon
                    : Svgs.statisticsOffIcon,
              ),
              label: '통계',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                currentIndex == 3 ? Svgs.accountOnIcon : Svgs.accountOffIcon,
              ),
              label: '내 정보',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              BlocProvider.of<BNCBloc>(context).add(TabChange(tabIndex: index));
            });
          },
        ),
      ),
    );
  }
}
