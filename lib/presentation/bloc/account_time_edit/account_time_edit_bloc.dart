import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/presentation/views/account/account_time_edit_argument.dart';

part 'account_time_edit_state.dart';
part 'account_time_edit_event.dart';

class AccountTimeEditBloc
    extends Bloc<AccountTimeEditEvent, AccountTimeEditState> {
  AccountTimeEditBloc()
      : super(
          const AccountTimeEditState(businessDays: [], open: '', close: ''),
        ) {
    on<InitAccountTime>(_initAccountTime);
    on<ChangeBusinessHour>(_changeBusinessHour);
    on<ChangeBusinessDays>(_changeBusinessDays);
    on<ChangeAccountTime>(_changeAccountTime);
  }

  void _changeBusinessHour(
    ChangeBusinessHour event,
    Emitter<AccountTimeEditState> emit,
  ) {
    switch (event.businessHour) {
      case BusinessHour.open:
        emit(
          state.copyWith(
            open: event.hour,
          ),
        );
      case BusinessHour.close:
        emit(
          state.copyWith(
            close: event.hour,
          ),
        );
    }
  }

  void _changeBusinessDays(
    ChangeBusinessDays event,
    Emitter<AccountTimeEditState> emit,
  ) {
    var businessDays = <String>[];
    for (String s in state.businessDays) {
      businessDays.add(s);
    }

    if (businessDays.contains(event.day)) {
      businessDays.remove(event.day);
    } else {
      businessDays.add(event.day);
    }
    emit(
      state.copyWith(
        businessDays: businessDays,
      ),
    );
  }

  void _initAccountTime(
    InitAccountTime event,
    Emitter<AccountTimeEditState> emit,
  ) {
    emit(
      state.copyWith(
        businessDays: event.argument.businessDays,
        open: event.argument.open,
        close: event.argument.close,
      ),
    );
  }

  Future<void> _changeAccountTime(
    ChangeAccountTime event,
    Emitter<AccountTimeEditState> emit,
  ) async {
    // TODO: apply account
  }
}
