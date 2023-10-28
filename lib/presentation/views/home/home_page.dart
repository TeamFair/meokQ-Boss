import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/resources/resources.dart';

class HomePage extends StatefulWidget {
  static const id = 'home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        // bottom: const TabBar(
        //   tabs: [
        //     Tab(
        //       text: '게시중',
        //     ),
        //     Tab(
        //       text: '검토중',
        //     ),
        //   ],
        // ),
      ),
      // bottomNavigationBar: ,
    );
  }
}
