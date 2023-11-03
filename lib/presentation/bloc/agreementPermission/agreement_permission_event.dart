part of 'agreement_permission_bloc.dart';

sealed class AgreementPermissionEvent extends Equatable {
  const AgreementPermissionEvent();

  @override
  List<Object> get props => [];
}

class AllAgree extends AgreementPermissionEvent {}

class ChangeCollectionAgree extends AgreementPermissionEvent {
  final bool collectionAgree;

  const ChangeCollectionAgree({required this.collectionAgree});
}

class ChangeThirdPartyAccess extends AgreementPermissionEvent {
  final bool thirdPartyAccess;

  const ChangeThirdPartyAccess({required this.thirdPartyAccess});
}

class ChangeMarketingAgree extends AgreementPermissionEvent {
  final bool marketingAgree;

  const ChangeMarketingAgree({required this.marketingAgree});
}