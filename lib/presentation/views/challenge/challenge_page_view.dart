import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/presentation/bloc/challenge/challenge_bloc.dart';
import 'package:meokq_boss/presentation/views/challenge/challenge_page.dart';

class ChallengePageView extends StatelessWidget {
  const ChallengePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChallengeBloc>(
      create: (context) => ChallengeBloc(),
      child: const ChallengePage(),
      );
  }
}