part of 'boss_information_bloc.dart';

enum BossTextInputType {
  businessNumber,
  businessType,
  bossName,
  userName,
  storeName,
  address,
  postalCode,
  birth;

  String get text {
    return switch (this) {
      BossTextInputType.businessNumber => '영업신고증 고유번호',
      BossTextInputType.businessType => '영업의 종류',
      BossTextInputType.bossName => '대표자',
      BossTextInputType.storeName => '영업소 명칭(상호명)',
      BossTextInputType.address => '소재지',
      BossTextInputType.postalCode => '우편번호',
      BossTextInputType.birth => '생년월일',
      BossTextInputType.userName => '성함',
    };
  }

  String get inTextField {
    return switch (this) {
      BossTextInputType.businessNumber => '제',
      BossTextInputType.businessType => '선택하세요',
      BossTextInputType.bossName => '대표자명',
      BossTextInputType.storeName => '상호명',
      BossTextInputType.address => '주소',
      BossTextInputType.postalCode => '우편번호',
      BossTextInputType.birth => 'YY/MM/DD',
      BossTextInputType.userName => '성함',
    };
  }

  bool get isBusinessNumber => this == BossTextInputType.businessNumber;
}

enum ImageType {
  businessCertification,
  identification,
}

enum Stage { first, second }

enum ImagePicker { gallery, camera }

class BossInformationState extends Equatable {
  const BossInformationState({
    required this.businessNumber,
    required this.businessType,
    required this.bossName,
    required this.storeName,
    required this.address,
    required this.birth,
    required this.businessCertificationUrl,
    required this.postalCode,
    required this.identificationUrl,
    required this.userName,
    required this.allFinished,
    required this.stage,
  });

  final String businessNumber;

  final String businessType;

  final String bossName;

  final String storeName;

  final String address;

  final String postalCode;

  final String birth;

  final String businessCertificationUrl;

  final String identificationUrl;

  final String userName;

  final bool allFinished;

  final Stage stage;

  static BossInformationState init() {
    return BossInformationState(
      businessNumber: '',
      businessType: businessTypeList[0],
      bossName: '',
      storeName: '',
      address: '',
      birth: '',
      businessCertificationUrl: '',
      postalCode: '',
      identificationUrl: '',
      userName: '',
      allFinished: false,
      stage: Stage.first,
    );
  }

  BossInformationState copyWith({
    String? businessNumber,
    String? businessType,
    String? bossName,
    String? storeName,
    String? address,
    String? postalCode,
    String? birth,
    String? businessCertificationUrl,
    String? identificationUrl,
    String? userName,
    bool? allFinished,
    Stage? stage,
  }) {
    return BossInformationState(
      businessNumber: businessNumber ?? this.businessNumber,
      businessType: businessType ?? this.businessType,
      bossName: bossName ?? this.bossName,
      storeName: storeName ?? this.storeName,
      address: address ?? this.address,
      birth: birth ?? this.birth,
      businessCertificationUrl:
          businessCertificationUrl ?? this.businessCertificationUrl,
      postalCode: postalCode ?? this.postalCode,
      identificationUrl: identificationUrl ?? this.identificationUrl,
      userName: userName ?? this.userName,
      allFinished: allFinished ?? this.allFinished,
      stage: stage ?? this.stage,
    );
  }

  @override
  List<Object> get props => [
        businessNumber,
        businessType,
        bossName,
        storeName,
        address,
        postalCode,
        birth,
        businessCertificationUrl,
        identificationUrl,
        userName,
        allFinished,
        stage,
      ];

  bool get stage1Condition =>
      businessNumber.isNotEmpty &&
      bossName.isNotEmpty &&
      storeName.isNotEmpty &&
      address.isNotEmpty &&
      postalCode.isNotEmpty &&
      businessCertificationUrl.isNotEmpty;
}
