part of 'store_information_bloc.dart';

enum BusinessHour { open, close }

enum Stage { first, second, third }

enum ApplyState { init, success, failed }

class StoreInformationState extends Equatable {
  const StoreInformationState({
    required this.storeName,
    required this.address,
    required this.phone,
    required this.businessDays,
    required this.open,
    required this.close,
    required this.logoUrl,
    required this.stage,
    required this.applyState,
  });

  final String storeName;

  final String address;

  final String phone;

  final List<String> businessDays;

  final String open;

  final String close;

  final String logoUrl;

  final Stage stage;

  final ApplyState applyState;

  static StoreInformationState init() {
    return const StoreInformationState(
      storeName: '',
      address: '',
      phone: '',
      businessDays: [],
      open: '오전 09:00',
      close: '오후 11:00',
      logoUrl: '',
      stage: Stage.first,
      applyState: ApplyState.init,
    );
  }

  StoreInformationState copyWith({
    String? storeName,
    String? address,
    String? phone,
    List<String>? businessDays,
    String? open,
    String? close,
    String? logoUrl,
    bool? allFinished,
    Stage? stage,
    ApplyState? applyState,
  }) {
    return StoreInformationState(
      storeName: storeName ?? this.storeName,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      businessDays: businessDays ?? this.businessDays,
      open: open ?? this.open,
      close: close ?? this.close,
      logoUrl: logoUrl ?? this.logoUrl,
      stage: stage ?? this.stage,
      applyState: applyState ?? this.applyState,
    );
  }

  @override
  List<Object> get props => [
        storeName,
        address,
        phone,
        businessDays,
        open,
        close,
        logoUrl,
        stage,
        applyState,
      ];

  bool get canStage1ButtonTap =>
      storeName.isNotEmpty && address.isNotEmpty && phone.isNotEmpty;

  bool get canStage3ButtonTap => logoUrl.isNotEmpty;
}
