import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/tab_bar_controller/tab_bar_bloc.dart';
import 'package:meokq_boss/presentation/views/setting/setting_page.dart';
import 'package:meokq_boss/presentation/views/statistics/statistics_issued_page.dart';
import 'package:meokq_boss/presentation/views/statistics/statistics_used_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class StatisticsPage extends StatefulWidget {
  static const id = 'statisticsage';
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '고객 통계',
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  SettingPage.id,
                );
              },
              icon: SvgPicture.asset(Svgs.settingIcon),
            ),
          ],
          bottom: TabBar(
            tabs: const <Widget>[
              Tab(
                text: '발급완료',
              ),
              Tab(
                text: '사용완료',
              ),
            ],
            onTap: (index) {
              BlocProvider.of<TabBarBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
            labelStyle: TextS.subtitle1().copyWith(fontSize: 14),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: -36),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 3, color: ColorS.tabYellow),
              borderRadius: BorderRadius.all(Radius.circular(100)),
              insets: EdgeInsets.symmetric(
                horizontal: 1,
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            StatisticsIssuedPage(),
            StatisticsUsedPage(),
          ],
        ),
      ),
    );
  }
}
