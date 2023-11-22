import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/config/const.dart';

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
  }

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
}
