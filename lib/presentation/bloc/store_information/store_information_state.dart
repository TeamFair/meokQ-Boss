part of 'store_information_bloc.dart';

enum StoreTextInputType {
  storeName,
  address,
  phone;

  String get text {
    return switch (this) {
      StoreTextInputType.storeName => '상호명',
      StoreTextInputType.address => '가게주소',
      StoreTextInputType.phone => '가게 전화번호',
    };
  }

  String get inTextField {
    return switch (this) {
      StoreTextInputType.phone => 'ex) 커피크라운 안양점',
      StoreTextInputType.storeName => 'ex) 경기도 안양시 만안구 안양동 88-1',
      StoreTextInputType.address => '숫자만 입력',
    };
  }
}

enum BusinessHour { open, close }

enum Stage { first, second, third }

class StoreInformationState extends Equatable {
  const StoreInformationState({
    required this.storeName,
    required this.address,
    required this.phone,
    required this.businessDays,
    required this.open,
    required this.close,
    required this.logoUrl,
    required this.allFinished,
    required this.stage,
  });

  final String storeName;

  final String address;

  final String phone;

  final List<String> businessDays;

  final String open;

  final String close;

  final String logoUrl;

  final bool allFinished;

  final Stage stage;

  static StoreInformationState init() {
    return const StoreInformationState(
      storeName: '',
      address: '',
      phone: '',
      businessDays: [],
      open: '오전 9:00',
      close: '오후 11:00',
      logoUrl: '',
      allFinished: false,
      stage: Stage.first,
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
  }) {
    return StoreInformationState(
      storeName: storeName ?? this.storeName,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      businessDays: businessDays ?? this.businessDays,
      open: open ?? this.open,
      close: close ?? this.close,
      logoUrl: logoUrl ?? this.logoUrl,
      allFinished: allFinished ?? this.allFinished,
      stage: stage ?? this.stage,
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
        allFinished,
        stage,
      ];

  bool get canStage1ButtonTap =>
      storeName.isNotEmpty && address.isNotEmpty && phone.isNotEmpty;

  bool get canStage3ButtonTap => logoUrl.isNotEmpty;
}
