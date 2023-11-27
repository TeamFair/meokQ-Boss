import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/tab_bar_controller/tab_bar_bloc.dart';
import 'package:meokq_boss/presentation/views/quest/quest_add/quest_add_page.dart';
import 'package:meokq_boss/presentation/views/quest/quest_check/quest_check_page.dart';
import 'package:meokq_boss/presentation/views/quest/quest_show/quest_show_page.dart';
import 'package:meokq_boss/presentation/views/setting/setting_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({super.key});

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '퀘스트',
          ),
          elevation: 1,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  QuestAddPage.id,
                );
              },
              icon: SvgPicture.asset(Svgs.plusIcon),
            ),
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
                text: '게시중',
              ),
              Tab(
                text: '검토중',
              ),
            ],
            onTap: (index) {
              setState(() {
                BlocProvider.of<TabBarBloc>(context)
                    .add(TabChange(tabIndex: index));
              });
            },
            labelStyle: TextS.subtitle1().copyWith(fontSize: 14),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 36),
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
            QuestShowPage(),
            QuestCheckPage(),
          ],
        ),
      ),
    );
  }
}
