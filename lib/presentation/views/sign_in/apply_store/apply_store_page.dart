import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/boss_information_apply/boss_information_apply_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/store_information_apply/store_information_apply_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class ApplyStorePage extends StatefulWidget {
  static const id = 'apply_store_page_id';
  const ApplyStorePage({super.key});

  @override
  State<ApplyStorePage> createState() => _ApplyStorePageState();
}

class _ApplyStorePageState extends State<ApplyStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        title: Text(
          '입점신청',
          style: TextS.title2(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '맛Q 입점에 필요한 정보를 채워주세요',
              style: TextS.title1().copyWith(
                fontSize: 19,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<BossInformationBloc, BossInformationState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    if (!state.allFinished) {
                      Navigator.of(context)
                          .pushNamed(BossInformationApplyPage.id);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    width: double.infinity,
                    height: 87,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C7D7D7D),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('사업자정보', style: TextS.title2()),
                              const SizedBox(
                                height: 6,
                              ),
                              Text('영업신고증, 신분증', style: TextS.caption1()),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          state.allFinished
                              ? Svgs.checkInWithCircleIcon
                              : Svgs.checkOffWithCircleIcon,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<StoreInformationBloc, StoreInformationState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    if (!state.allFinished) {
                      Navigator.of(context)
                          .pushNamed(StoreInformationApplyPage.id);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    width: double.infinity,
                    height: 87,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C7D7D7D),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('가게정보', style: TextS.title2()),
                        const Spacer(),
                        SvgPicture.asset(
                          state.allFinished
                              ? Svgs.checkInWithCircleIcon
                              : Svgs.checkOffWithCircleIcon,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
