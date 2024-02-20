import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/challenge_detail/challenge_detail_bloc.dart';
import 'package:meokq_boss/presentation/global/challenge_box.dart';
import 'package:meokq_boss/presentation/global/custom_alert_dialog.dart';
import 'package:meokq_boss/presentation/global/custom_drop_down_button.dart';
import 'package:meokq_boss/presentation/global/meakq_two_button.dart';
import 'package:meokq_boss/presentation/global/meokq_gray_button.dart';
import 'package:meokq_boss/presentation/views/challenge/challenge_detail/challenge_detail_argument.dart';
import 'package:meokq_boss/resources/resources.dart';

class ChallengeDetailPage extends StatefulWidget {
  static const id = 'challenge_detail_page';
  const ChallengeDetailPage({super.key});

  @override
  State<ChallengeDetailPage> createState() => _ChallengeDetailPageState();
}

class _ChallengeDetailPageState extends State<ChallengeDetailPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
        ModalRoute.of(context)!.settings.arguments as ChallengeDetailArgument;

    BlocProvider.of<ChallengeDetailBloc>(context).add(
      InitChallengeState(
        challengeVO: args.challenge,
      ),
    );
  }

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        centerTitle: true,
        title: const Text(
          '도전 내역',
        ),
      ),
      backgroundColor: ColorS.background,
      body: BlocListener<ChallengeDetailBloc, ChallengeDetailState>(
        listener: (context, state) {
          switch (state.status) {
            case ChallengeDetailStatus.init:
              break;
            case ChallengeDetailStatus.reject:
            case ChallengeDetailStatus.apply:
              Navigator.pop(context);
            case ChallengeDetailStatus.failed:
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('도전 수정에 실패하였습니다')),
              );
          }
        },
        child: BlocBuilder<ChallengeDetailBloc, ChallengeDetailState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 42),
              child: Column(
                children: [
                  Container(
                    height: 450,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage(state.imageUrl),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  ChallengeBox(
                    rewardTitle: state.rewardTitle,
                    missionTitle: state.missionTitle,
                    userNickName: state.userNickName,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  MeokQTwoButton(
                    firstText: '반려하기',
                    secondText: '발급하기',
                    firstButtonTap: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        isScrollControlled: true,
                        builder: (childContext) => BlocProvider.value(
                          value: context.read<ChallengeDetailBloc>(),
                          child: BlocBuilder<ChallengeDetailBloc,
                              ChallengeDetailState>(
                            builder: (context, state) {
                              return SingleChildScrollView(
                                child: Padding(
                                  padding:
                                      MediaQuery.of(childContext).viewInsets,
                                  child: Container(
                                    height: 450,
                                    width: double.infinity,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25),
                                        ),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 8,
                                            bottom: 14,
                                          ),
                                          width: 30,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFE7E7E7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '퀘스트 반려하기',
                                          style: TextS.title2(),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 330,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '*',
                                                      style: TextS.heading2()
                                                          .copyWith(
                                                        color: const Color(
                                                          0xFFFF5E5E,
                                                        ),
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' 반려 사유 선택하기 ',
                                                      style: TextS.heading2(),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              CustomDropDownButton(
                                                dropDownList: rejectList,
                                                selectedValue: state.comment,
                                                leftPadding: 0,
                                                onTap: (value) => context
                                                    .read<ChallengeDetailBloc>()
                                                    .add(
                                                      ChangeComment(
                                                        comment: value ?? '',
                                                      ),
                                                    ),
                                              ),
                                              const SizedBox(
                                                height: 14,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 165,
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                  20,
                                                  15,
                                                  15,
                                                  7.5,
                                                ),
                                                decoration: ShapeDecoration(
                                                  color: ColorS.background,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      12,
                                                    ),
                                                  ),
                                                ),
                                                child: state.comment == '직접 입력'
                                                    ? TextField(
                                                        controller: controller,
                                                        style: TextS.content()
                                                            .copyWith(
                                                          color: ColorS.gray400,
                                                        ),
                                                        onChanged: (value) =>
                                                            context
                                                                .read<
                                                                    ChallengeDetailBloc>()
                                                                .add(
                                                                  ChangeComment(
                                                                    comment: state
                                                                        .comment,
                                                                  ),
                                                                ),
                                                        cursorColor:
                                                            ColorS.applyGray,
                                                        decoration:
                                                            InputDecoration(
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: -13,
                                                          ),
                                                          border:
                                                              InputBorder.none,
                                                          hintText:
                                                              '반려하신 사유를 작성해주세요',
                                                          hintStyle:
                                                              TextS.content()
                                                                  .copyWith(
                                                            color: ColorS
                                                                .applyGray,
                                                          ),
                                                        ),
                                                      )
                                                    : Text(
                                                        '반려하신 사유를 작성해주세요',
                                                        style: TextS.content()
                                                            .copyWith(
                                                          color:
                                                              ColorS.applyGray,
                                                        ),
                                                      ),
                                              ),
                                              const SizedBox(
                                                height: 14,
                                              ),
                                              MeokQGrayButton(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          ChallengeDetailBloc>()
                                                      .add(RejectChallenge());
                                                  Navigator.pop(context);
                                                },
                                                text: '반려하기',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    secondButtonTap: () {
                      showDialog(
                        context: context,
                        builder: (childContext) {
                          return CustomAlertDialog(
                            title: '쿠폰을 발급하시겠습니까?',
                            contents: '발급 후 되돌릴 수 없으니 유의해주세요',
                            confirmText: '확인',
                            confirmCallback: () {
                              context
                                  .read<ChallengeDetailBloc>()
                                  .add(ApplyChallenge());
                              Navigator.pop(context);
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
