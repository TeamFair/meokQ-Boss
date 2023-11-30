import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc()
      : super(
          const SettingState(
            collectionAgreement: false,
            emailAgreement: false,
            smsAgreement: false,
          ),
        ) {
    on<TapAgreement>(_tapAgreement);
    on<InitState>(_initState);
    on<TapLogoutButton>(_tapLogoutButton);
  }

  Future<void> _initState(
    InitState event,
    Emitter<SettingState> emit,
  ) async {
    emit(
      state.copyWith(
        collectionAgreement: true,
        emailAgreement: true,
        smsAgreement: false,
      ),
    );
  }

  Future<void> _tapAgreement(
    TapAgreement event,
    Emitter<SettingState> emit,
  ) async {
    switch (event.agreement) {
      case Agreement.collection:
        // TODO : collection 버튼 on/off api 호출
        emit(
          state.copyWith(
            collectionAgreement: !state.collectionAgreement,
          ),
        );
      case Agreement.email:
        // TODO : email 버튼 on/off api 호출
        emit(
          state.copyWith(
            emailAgreement: !state.emailAgreement,
          ),
        );
      case Agreement.sms:
        // TODO : sms 버튼 on/off api 호출
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
    // TODO: logout api
  }
}
