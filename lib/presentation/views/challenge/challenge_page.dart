import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/challenge/challenge_bloc.dart';
import 'package:meokq_boss/presentation/global/challenge_box.dart';
import 'package:meokq_boss/presentation/views/setting/setting_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class ChallengePage extends StatefulWidget {
  static const id = 'challenge_page';
  const ChallengePage({super.key});

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<ChallengeBloc>(context).add(InitChallenge());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '도전',
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
      ),
      body: BlocListener<ChallengeBloc, ChallengeState>(
        listener: (context, state) {
          switch (state.challengeStatus) {
            case ChallengeStatus.failure:
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('도전 목록을 불러오지 못했습니다')),
              );
              break;
            case ChallengeStatus.init:
            case ChallengeStatus.success:
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('도전 목록을 불러왔습니다')),
              );
              break;
          }
        },
        child: BlocBuilder<ChallengeBloc, ChallengeState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: state.challengeList.isNotEmpty
                  ? ListView.separated(
                      itemCount: state.challengeList.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 12,
                      ),
                      itemBuilder: (context, index) {
                        final challenge = state.challengeList[index];
                        return GestureDetector(
                          onTap: () {},
                          child: ChallengeBox(challenge: challenge),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        '승인할 도전이 없습니다',
                        style:
                            TextS.content().copyWith(color: ColorS.contentGray),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
