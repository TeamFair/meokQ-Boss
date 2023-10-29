import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/resources/resources.dart';

class AccountPage extends StatefulWidget {
  static const id = 'account_page';
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '내 정보',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Svgs.pencilIcon),
          ),
        ],
      ),
    );
  }
}
