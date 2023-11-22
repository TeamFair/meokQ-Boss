import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/resources/resources.dart';

class StoreInformationApplyPage extends StatefulWidget {
  static const id = 'store_information_apply_page';
  const StoreInformationApplyPage({super.key});

  @override
  State<StoreInformationApplyPage> createState() =>
      _StoreInformationApplyPageState();
}

class _StoreInformationApplyPageState extends State<StoreInformationApplyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        title: Text(
          '가게정보 입력',
          style: TextS.title2(),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<StoreInformationBloc, StoreInformationState>(
        builder: (context, state) {
          return Container();
        },
      ),
    );
  }
}
