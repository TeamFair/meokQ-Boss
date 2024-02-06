import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/agreement_permission/agreement_permission_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/views/sign_in/agree/widget/agree_bottom_sheet_button.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/apply_store_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class AgreePage extends StatefulWidget {
  static const id = 'agree_page';
  const AgreePage({super.key});

  @override
  State<AgreePage> createState() => _AgreePageState();
}

class _AgreePageState extends State<AgreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(Svgs.leftArrowIcon),
        ),
        title: Text(
          '이용약관 및 개인정보 이용 동의',
          style: TextS.title2(),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<AgreementPermissionBloc, AgreementPermissionState>(
        builder: (context, state) {
          bool canTapNextButton =
              state.collectionAgree && state.thirdPartyAccess;

          return Container(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
            child: Column(
              children: [
                const AgreeButton(
                  consent: Consent.all,
                ),
                const AgreeButton(
                  consent: Consent.collection,
                ),
                const AgreeButton(
                  consent: Consent.thirdParty,
                ),
                const AgreeButton(
                  consent: Consent.marketing,
                ),
                const Spacer(),
                MeokQButton(
                  onTap: () async {
                    context
                        .read<AgreementPermissionBloc>()
                        .add(TapNextButton());
                    Navigator.of(context).pushNamed(ApplyStorePage.id);
                  },
                  text: '다음',
                  canTap: canTapNextButton,
                ),
                const SizedBox(
                  height: 42,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
