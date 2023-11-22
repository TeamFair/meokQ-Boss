import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'store_information_state.dart';
part 'store_information_event.dart';

class StoreInformationBloc
    extends Bloc<StoreInformationEvent, StoreInformationState> {
  StoreInformationBloc() : super(StoreInformationState.init()) {
    on<ChangeTextField>(_changeTextField);
    on<ChangeBussinessHour>(_changeBussinessHour);
    on<ChangeBussinessDays>(_changeBussinessDays);
    on<AddImage>(_addImage);
  }

  void _changeTextField(
    ChangeTextField event,
    Emitter<StoreInformationState> emit,
  ) {
    switch (event.bossTextInputType) {
      case BossTextInputType.storeName:
        emit(
          state.copyWith(
            storeName: event.newText,
          ),
        );
      case BossTextInputType.address:
        emit(
          state.copyWith(
            address: event.newText,
          ),
        );
      case BossTextInputType.phone:
        emit(
          state.copyWith(
            phone: event.newText,
          ),
        );
    }
  }

  void _changeBussinessHour(
    ChangeBussinessHour event,
    Emitter<StoreInformationState> emit,
  ) {
    switch (event.businessHour) {
      case BusinessHour.open:
        emit(
          state.copyWith(
            open: event.time,
          ),
        );
      case BusinessHour.close:
        emit(
          state.copyWith(
            close: event.time,
          ),
        );
    }
  }

  void _changeBussinessDays(
    ChangeBussinessDays event,
    Emitter<StoreInformationState> emit,
  ) {
    emit(
          state.copyWith(
            businessDays: event.businessDays,
          ),
        );
  }

  void _addImage(
    AddImage event,
    Emitter<StoreInformationState> emit,
  ) {
    // TODO: 이미지를 찍거나 사진을 가져오는 부분
  }
}
