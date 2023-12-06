part of 'boss_information_bloc.dart';

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
