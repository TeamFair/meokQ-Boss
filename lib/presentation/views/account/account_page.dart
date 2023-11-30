import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/account/account_bloc.dart';
import 'package:meokq_boss/resources/resources.dart';

class AccountPage extends StatefulWidget {
  static const id = 'account_page';
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AccountBloc>(context).add(InitMyInformation());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        addressController.text = state.myInformation.address;
        phoneController.text = state.myInformation.phone;
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 1,
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
            child: Column(
              children: [
                SizedBox(
                  height: 81,
                  child: Row(
                    children: [
                      Container(
                        width: 81,
                        height: 81,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://via.placeholder.com/81x81',
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: Color(0xFFC7C7C7),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      SizedBox(
                        height: 46,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '커피크라운 안양점',
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
                                    '${state.myInformation.ticketAccount}개',
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
                  onTap: () {},
                ),
                AccountTextWidget(
                  title: '영업일',
                  content: businessDayString(state.myInformation.businessDays),
                  isEdit: state.editClicked,
                  onTap: () {},
                ),
                AccountTextWidget(
                  title: '영업 시작 시간',
                  content: state.myInformation.open,
                  isEdit: state.editClicked,
                  onTap: () {},
                ),
                AccountTextWidget(
                  title: '영업 마감 시간',
                  content: state.myInformation.close,
                  isEdit: state.editClicked,
                  onTap: () {},
                ),
                AccountTextWidget(
                  title: '영업장 전화번호',
                  content: state.myInformation.phone,
                  isEdit: state.editClicked,
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String businessDayString(List<String> businessDays) {
    var str = '';
    print(businessDays);
    for (var day in businessDays) {
      str += '$day, ';
    }
    return str.substring(0, str.length - 2);
  }
}

class AccountTextWidget extends StatelessWidget {
  const AccountTextWidget({
    super.key,
    required this.title,
    required this.content,
    required this.isEdit,
    required this.onTap,
  });

  final String title;
  final String content;
  final bool isEdit;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
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
              ? TextButton(
                  onPressed: onTap,
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
