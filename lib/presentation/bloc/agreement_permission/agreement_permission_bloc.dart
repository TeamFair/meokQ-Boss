import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/agreement/agreement_dto.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/presentation/bloc/setting/setting_bloc.dart';

part 'agreement_permission_event.dart';
part 'agreement_permission_state.dart';

class AgreementPermissionBloc
    extends Bloc<AgreementPermissionEvent, AgreementPermissionState> {
  AgreementPermissionBloc()
      : super(
          const AgreementPermissionState(
            allButtonClick: false,
            collectionAgree: false,
            thirdPartyAccess: false,
            marketingAgree: false,
          ),
        ) {
    on<ChangeAgree>(_tabAgreeButton);
    on<TapNextButton>(_tabNextButton);
  }

  final remote = getIt<InterfaceRemote>();

  void _tabAgreeButton(
    ChangeAgree event,
    Emitter<AgreementPermissionState> emit,
  ) {
    switch (event.consent) {
      case Consent.collection:
        emit(
          state.copyWith(
            collectionAgree: !state.collectionAgree,
          ),
        );
      case Consent.thirdParty:
        emit(
          state.copyWith(
            thirdPartyAccess: !state.thirdPartyAccess,
          ),
        );
      case Consent.marketing:
        emit(
          state.copyWith(
            marketingAgree: !state.marketingAgree,
          ),
        );
      case Consent.all:
        if (state.allButtonClick) {
          emit(
            state.copyWith(
              allButtonClick: false,
              collectionAgree: false,
              thirdPartyAccess: false,
              marketingAgree: false,
            ),
          );
        } else {
          emit(
            state.copyWith(
              allButtonClick: true,
              collectionAgree: true,
              thirdPartyAccess: true,
              marketingAgree: true,
            ),
          );
        }
    }
  }

  Future<void> _tabNextButton(
    TapNextButton event,
    Emitter<AgreementPermissionState> emit,
  ) async{
    List<AgreementDTO> agreementList = <AgreementDTO>[
      AgreementDTO(
        version: 0,
        agreementType: Consent.collection.apiText,
        acceptYn: state.collectionAgree ? 'Y' : 'N',
      ),
      AgreementDTO(
        version: 0,
        agreementType: Consent.thirdParty.apiText,
        acceptYn: state.thirdPartyAccess ? 'Y' : 'N',
      ),
      AgreementDTO(
        version: 0,
        agreementType: Consent.marketing.apiText,
        acceptYn: state.marketingAgree ? 'Y' : 'N',
      ),
      AgreementDTO(
        version: 0,
        agreementType: Agreement.email.apiText,
        acceptYn: state.marketingAgree ? 'Y' : 'N',
      ),
      AgreementDTO(
        version: 0,
        agreementType: Agreement.sms.apiText,
        acceptYn: state.marketingAgree ? 'Y' : 'N',
      ),
    ];

    await remote.postAgreement(agreementList: agreementList);
  }
}
