import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/agreementPermission/agreement_permission_bloc.dart';
import 'package:meokq_boss/resources/resources.dart';

class CollectionAgreeButtomSheet extends StatefulWidget {
  const CollectionAgreeButtomSheet({super.key});

  @override
  State<CollectionAgreeButtomSheet> createState() =>
      _CollectionAgreeButtomSheetState();
}

class _CollectionAgreeButtomSheetState
    extends State<CollectionAgreeButtomSheet> {
  @override
  Widget build(BuildContext context) {
    final agreementPermissionbloc =
        BlocProvider.of<AgreementPermissionBloc>(context);
    return Container(
      height: 440,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: Column(
        children: [
          Container(
            width: 30,
            height: 4,
            decoration: ShapeDecoration(
              color: const Color(0xFFE7E7E7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 230,
            decoration: ShapeDecoration(
              color: const Color(0xFFF6F6F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                Text(
                  'TFair(팀페어)는 맛Q 서비스 회원가입, 고객상담 및 AS,\n고지사항 전달 및 서비스 사용을 위해 아래와 같이 개인정보를 수집, 이용합니다.\n개인정보 보호법 제15조 제1항1.\n회원 식별 및 회원제 서비스 제공 - 성함, 가게 주소\n2. 고객 상담 및 AS관리 - 전화번호\n3. 서비스 변경사항 및 고지사항 전달 - 가게 전화번호 및 이메일',
                  style: TextS.content().copyWith(
                    color: const Color(0xFF838693),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                agreementPermissionbloc.state.collectionAgree
                    ? Svgs.checkInWithCircleIcon
                    : Svgs.checkOffWithCircleIcon,
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                '동의합니다.',
                style: TextS.content().copyWith(color: ColorS.gray400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
