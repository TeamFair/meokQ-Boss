part of 'store_information_bloc.dart';

enum BossTextInputType {
  storeName,
  address,
  phone;

  String get text {
    return switch (this) {
      BossTextInputType.storeName => '상호명',
      BossTextInputType.address => '가게주소',
      BossTextInputType.phone => '가게 전화번호',
    };
  }

  String get inTextField {
    return switch (this) {
      BossTextInputType.phone => 'ex) 커피크라운 안양점',
      BossTextInputType.storeName => 'ex) 경기도 안양시 만안구 안양동 88-1',
      BossTextInputType.address => '숫자만 입력',
    };
  }
}

enum BusinessHour { open, close }

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
  });

  final String storeName;

  final String address;

  final String phone;

  final List<String> businessDays;

  final String open;

  final String close;

  final String logoUrl;

  final bool allFinished;

  static StoreInformationState init() {
    return const StoreInformationState(
      storeName: '',
      address: '',
      phone: '',
      businessDays: [],
      open: '',
      close: '',
      logoUrl: '',
      allFinished: false,
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
      ];
}
