part of 'agreement_permission_bloc.dart';

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
