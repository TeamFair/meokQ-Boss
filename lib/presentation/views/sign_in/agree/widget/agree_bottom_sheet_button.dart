import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/agreement_permission/agreement_permission_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/resources/resources.dart';

class AgreeButton extends StatelessWidget {
  const AgreeButton({
    super.key,
    required this.consent,
  });

  final Consent consent;

  bool get isAllAgree => consent == Consent.all;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<AgreementPermissionBloc>(),
      child: BlocBuilder<AgreementPermissionBloc, AgreementPermissionState>(
        builder: (context, state) {
          String svg = switch (consent) {
            Consent.all => state.allButtonClick
                ? Svgs.checkInWithCircleIcon
                : Svgs.checkOffWithCircleIcon,
            Consent.collection =>
              state.collectionAgree ? Svgs.checkInIcon : Svgs.checkOutIcon,
            Consent.thirdParty =>
              state.thirdPartyAccess ? Svgs.checkInIcon : Svgs.checkOutIcon,
            Consent.marketing =>
              state.marketingAgree ? Svgs.checkInIcon : Svgs.checkOutIcon,
          };

          return Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(svg),
                onPressed: () => context
                    .read<AgreementPermissionBloc>()
                    .add(ChangeAgree(consent: consent)),
              ),
              const SizedBox(
                width: 7,
              ),
              !isAllAgree
                  ? TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          builder: (childContext) {
                            return AgreementBottomSheet(
                              consent: consent,
                              parentContext: context,
                            );
                          },
                        );
                      },
                      child: Text(
                        consent.text,
                        style: TextS.content().copyWith(
                          color: ColorS.gray400,
                        ),
                      ),
                    )
                  : Text(
                      consent.text,
                      style: TextS.content().copyWith(
                        color: ColorS.gray400,
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}

class AgreementBottomSheet extends StatelessWidget {
  const AgreementBottomSheet({
    super.key,
    required this.consent,
    required this.parentContext,
  });

  final Consent consent;

  final BuildContext parentContext;

  @override
  Widget build(BuildContext childContext) {
    return BlocProvider.value(
      value: parentContext.read<AgreementPermissionBloc>(),
      child: BlocBuilder<AgreementPermissionBloc, AgreementPermissionState>(
        builder: (context, state) {
          String svg = switch (consent) {
            Consent.all => state.allButtonClick
                ? Svgs.checkInWithCircleIcon
                : Svgs.checkOffWithCircleIcon,
            Consent.collection =>
              state.collectionAgree ? Svgs.checkInIcon : Svgs.checkOutIcon,
            Consent.thirdParty =>
              state.thirdPartyAccess ? Svgs.checkInIcon : Svgs.checkOutIcon,
            Consent.marketing =>
              state.marketingAgree ? Svgs.checkInIcon : Svgs.checkOutIcon,
          };

          return Container(
            height: 460,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 14),
                  width: 30,
                  height: 4,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE7E7E7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Text(
                  consent.bottomSheetText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
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
                        consent.content,
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
                    IconButton(
                      onPressed: () {
                        context.read<AgreementPermissionBloc>().add(
                              ChangeAgree(
                                consent: consent,
                              ),
                            );
                      },
                      icon: SvgPicture.asset(
                        svg,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      '동의합니다.',
                      style: TextS.content().copyWith(
                        color: ColorS.gray400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                MeokQButton(
                  onTap: () => Navigator.pop(context),
                  text: '닫기',
                  canTap: true,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
