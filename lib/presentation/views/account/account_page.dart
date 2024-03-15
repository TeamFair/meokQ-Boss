import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/account/account_bloc.dart';
import 'package:meokq_boss/presentation/views/account/account_time_edit_argument.dart';
import 'package:meokq_boss/presentation/views/account/account_time_edit_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class AccountPage extends StatefulWidget {
  static const id = 'account_page';
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<AccountBloc>(context).add(InitMyInformation());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              '내 정보',
            ),
            actions: [
              IconButton(
                onPressed: () =>
                    context.read<AccountBloc>().add(EditButtonClicked()),
                icon: SvgPicture.asset(
                  state.editClicked
                      ? Svgs.checkWithCircleIcon
                      : Svgs.pencilIcon,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 81,
                    child: Row(
                      children: [
                        Container(
                          width: 81,
                          height: 81,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: state.myInformation.changedLogoUrl.isEmpty
                                ? Image.network(
                                    state.myInformation.logoUrl,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: ColorS.background,
                                      );
                                    },
                                    fit: BoxFit.fill,
                                  )
                                : Image.file(
                                    File(state.myInformation.changedLogoUrl),
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: ColorS.background,
                                      );
                                    },
                                    fit: BoxFit.fill,
                                  ),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        SizedBox(
                          height: 52,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                state.myInformation.name,
                                style: TextS.heading2(),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 20,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '퀘스트 개수 ',
                                      style: TextS.content2(),
                                    ),
                                    Text(
                                      '${state.myInformation.questCount}개',
                                      style: TextS.content2().copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      width: 1,
                                      height: 14,
                                      color: ColorS.commentGray,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      '이용권 개수 ',
                                      style: TextS.content2(),
                                    ),
                                    Text(
                                      '${state.myInformation.ticketCount}개',
                                      style: TextS.content2().copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  AccountTextWidget(
                    title: '주소',
                    content: state.myInformation.address,
                    isEdit: state.editClicked,
                    onChanged: (text) => context.read<AccountBloc>().add(
                          ChangeText(
                            newText: text,
                            textType: TextType.address,
                          ),
                        ),
                  ),
                  AccountTextWidget(
                    title: '영업일',
                    content: state.myInformation.businessDaysString,
                    isEdit: state.editClicked,
                    onButtonTap: () async {
                      await Navigator.of(context)
                          .pushNamed(
                            AccountTimeEditPage.id,
                            arguments: AccountTimeEditArgument(
                              businessDays: state.myInformation.businessDays,
                              open: state.myInformation.open,
                              close: state.myInformation.close,
                            ),
                          )
                          .whenComplete(
                            () => context.read<AccountBloc>().add(
                                  InitMyInformation(),
                                ),
                          );
                    },
                  ),
                  AccountTextWidget(
                    title: '영업 시작 시간',
                    content: state.myInformation.open,
                    isEdit: state.editClicked,
                    onButtonTap: () async {
                      await Navigator.of(context)
                          .pushNamed(
                            AccountTimeEditPage.id,
                            arguments: AccountTimeEditArgument(
                              businessDays: state.myInformation.businessDays,
                              open: state.myInformation.open,
                              close: state.myInformation.close,
                            ),
                          )
                          .whenComplete(
                            () => context.read<AccountBloc>().add(
                                  InitMyInformation(),
                                ),
                          );
                    },
                  ),
                  AccountTextWidget(
                    title: '영업 마감 시간',
                    content: state.myInformation.close,
                    isEdit: state.editClicked,
                    onButtonTap: () async {
                      await Navigator.of(context)
                          .pushNamed(
                            AccountTimeEditPage.id,
                            arguments: AccountTimeEditArgument(
                              businessDays: state.myInformation.businessDays,
                              open: state.myInformation.open,
                              close: state.myInformation.close,
                            ),
                          )
                          .whenComplete(
                            () => context.read<AccountBloc>().add(
                                  InitMyInformation(),
                                ),
                          );
                    },
                  ),
                  AccountTextWidget(
                    title: '영업장 전화번호',
                    content: state.myInformation.phone,
                    isEdit: state.editClicked,
                    onChanged: (text) => context.read<AccountBloc>().add(
                          ChangeText(
                            newText: text,
                            textType: TextType.phone,
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class AccountTextWidget extends StatelessWidget {
  AccountTextWidget({
    super.key,
    required this.title,
    required this.content,
    required this.isEdit,
    this.onButtonTap,
    this.onChanged,
  });

  final String title;
  final String content;
  final bool isEdit;
  final Function()? onButtonTap;
  final Function(String)? onChanged;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = content;
    controller.selection =
        TextSelection.collapsed(offset: controller.text.length);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextS.subtitle1(),
          ),
          isEdit
              ? onButtonTap == null
                  ? SizedBox(
                      width: 200,
                      child: TextField(
                        controller: controller,
                        textAlign: TextAlign.right,
                        onChanged: onChanged,
                        style: TextS.subtitle2().copyWith(
                          color: ColorS.gray400,
                          decoration: TextDecoration.underline,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  : TextButton(
                      onPressed: onButtonTap,
                      child: Text(
                        content,
                        style: TextS.subtitle2().copyWith(
                          color: ColorS.gray400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
              : Text(
                  content,
                  style: TextS.subtitle2().copyWith(
                    color: ColorS.gray400,
                  ),
                ),
        ],
      ),
    );
  }
}
