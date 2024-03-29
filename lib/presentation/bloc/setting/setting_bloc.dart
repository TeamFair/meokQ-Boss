import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/agreement/agreement_dto.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';

part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc()
      : super(
          const SettingState(
            collectionAgreement: false,
            emailAgreement: false,
            smsAgreement: false,
            userState: UserState.login,
          ),
        ) {
    on<TapAgreement>(_tapAgreement);
    on<InitState>(_initState);
    on<TapLogoutButton>(_tapLogoutButton);
    on<TapWithdrawButton>(_tapWithdrawButton);
  }

  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  Future<void> _initState(
    InitState event,
    Emitter<SettingState> emit,
  ) async {
    final collectionAgreement =
        await _remote.getAgreement(agreementType: Agreement.collection.apiText);
    final emailAgreement =
        await _remote.getAgreement(agreementType: Agreement.email.apiText);
    final smsAgreement =
        await _remote.getAgreement(agreementType: Agreement.sms.apiText);

    emit(
      state.copyWith(
        collectionAgreement: collectionAgreement,
        emailAgreement: emailAgreement,
        smsAgreement: smsAgreement,
      ),
    );
  }

  Future<void> _tapAgreement(
    TapAgreement event,
    Emitter<SettingState> emit,
  ) async {
    switch (event.agreement) {
      case Agreement.collection:
        await _remote.postAgreement(
          agreementList: [
            AgreementDTO(
              version: 0,
              agreementType: Agreement.collection.apiText,
              acceptYn: !state.collectionAgreement == true ? 'Y' : 'N',
            ),
          ],
        );
        emit(
          state.copyWith(
            collectionAgreement: !state.collectionAgreement,
          ),
        );
      case Agreement.email:
        await _remote.postAgreement(
          agreementList: [
            AgreementDTO(
              version: 0,
              agreementType: Agreement.email.apiText,
              acceptYn: !state.collectionAgreement == true ? 'Y' : 'N',
            ),
          ],
        );
        emit(
          state.copyWith(
            emailAgreement: !state.emailAgreement,
          ),
        );
      case Agreement.sms:
        await _remote.postAgreement(
          agreementList: [
            AgreementDTO(
              version: 0,
              agreementType: Agreement.sms.apiText,
              acceptYn: !state.collectionAgreement == true ? 'Y' : 'N',
            ),
          ],
        );
        emit(
          state.copyWith(
            smsAgreement: !state.smsAgreement,
          ),
        );
    }
  }

  Future<void> _tapLogoutButton(
    TapLogoutButton event,
    Emitter<SettingState> emit,
  ) async {
    await _remote.logout();
    _local.removeAll();
    emit(
      state.copyWith(
        userState: UserState.logout,
      ),
    );
  }

  Future<void> _tapWithdrawButton(
    TapWithdrawButton event,
    Emitter<SettingState> emit,
  ) async {
    await _remote.withdraw();
    _local.removeAll();
    emit(
      state.copyWith(
        userState: UserState.withdraw,
      ),
    );
  }
}
