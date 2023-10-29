import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/resources/resources.dart';

class ChallengePage extends StatefulWidget {
  static const id = 'challenge_page';
  const ChallengePage({super.key});

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '도전',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Svgs.settingIcon),
          ),
        ],
      ),
    );
  }
}
