import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    on<AllAgree>(_tabAllAgreeButton);
    on<ChangeCollectionAgree>(_tabCollectionAgreeButton);
    on<ChangeThirdPartyAccess>(_tabThirdPartyAccessButton);
    on<ChangeMarketingAgree>(_tabMarketingAgreeButton);
  }

  void _tabAllAgreeButton(
    AllAgree event,
    Emitter<AgreementPermissionState> emit,
  ) {
    emit(
      state.copyWith(
        allButtonClick: !state.allButtonClick,
        collectionAgree: !state.allButtonClick,
        thirdPartyAccess: !state.allButtonClick,
        marketingAgree: !state.allButtonClick,
      ),
    );
  }

  void _tabCollectionAgreeButton(
    ChangeCollectionAgree event,
    Emitter<AgreementPermissionState> emit,
  ) {
    emit(
      state.copyWith(
        collectionAgree: !state.collectionAgree,
      ),
    );
  }

  void _tabThirdPartyAccessButton(
    ChangeThirdPartyAccess event,
    Emitter<AgreementPermissionState> emit,
  ) {
    emit(
      state.copyWith(
        thirdPartyAccess: !state.thirdPartyAccess,
      ),
    );
  }

  void _tabMarketingAgreeButton(
    ChangeMarketingAgree event,
    Emitter<AgreementPermissionState> emit,
  ) {
    emit(
      state.copyWith(
        marketingAgree: !state.marketingAgree,
      ),
    );
  }
}
