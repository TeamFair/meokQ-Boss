part of 'agreement_permission_bloc.dart';

enum Consent {
  all,
  collection,
  thirdParty,
  marketing;

  String get text {
    return switch (this) {
      Consent.all => '모두 동의합니다.',
      Consent.collection => '(필수) 개인정보 수집 이용 동의서',
      Consent.thirdParty => '(필수) 개인정보 제3자 제공 동의',
      Consent.marketing => '(선택) 홍보 및 마케팅에 관한 동의',
    };
  }

  String get bottomSheetText {
    return switch (this) {
      Consent.all => '모두 동의합니다.',
      Consent.collection => '개인정보 수집 이용 동의서',
      Consent.thirdParty => '개인정보 제3자 제공 동의',
      Consent.marketing => '홍보 및 마케팅에 관한 동의',
    };
  }

  String get content {
    return switch (this) {
      Consent.all => '',
      Consent.collection => personalInfoCollectAgreement,
      Consent.thirdParty => thirdPartySharingConsent,
      Consent.marketing => marketingConsent,
    };
  }

  String get apiText {
    return switch (this) {
      Consent.collection => 'PERSONAL_INFO_COLLECTION',
      Consent.thirdParty => 'THIRD_PARTY_PROVIDE',
      Consent.marketing => 'PROMOTION_MARKETING',
      Consent.all => '',
    };
  }
}

class AgreementPermissionState extends Equatable {
  const AgreementPermissionState({
    required this.allButtonClick,
    required this.collectionAgree,
    required this.thirdPartyAccess,
    required this.marketingAgree,
  });

  final bool allButtonClick;

  final bool collectionAgree;

  final bool thirdPartyAccess;

  final bool marketingAgree;

  AgreementPermissionState copyWith({
    bool? collectionAgree,
    bool? thirdPartyAccess,
    bool? marketingAgree,
    bool? allButtonClick,
  }) {
    return AgreementPermissionState(
      allButtonClick: allButtonClick ?? this.allButtonClick,
      collectionAgree: collectionAgree ?? this.collectionAgree,
      thirdPartyAccess: thirdPartyAccess ?? this.thirdPartyAccess,
      marketingAgree: marketingAgree ?? this.marketingAgree,
    );
  }

  @override
  List<Object> get props => [
        allButtonClick,
        collectionAgree,
        thirdPartyAccess,
        marketingAgree,
      ];
}
