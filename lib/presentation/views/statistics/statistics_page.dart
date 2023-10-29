import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/presentation/views/setting/setting_page.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '고객 통계',
        ),
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
      ),
    );
  }
}
