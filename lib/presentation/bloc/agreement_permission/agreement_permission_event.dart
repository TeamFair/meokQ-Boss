part of 'agreement_permission_bloc.dart';
sealed class AgreementPermissionEvent extends Equatable {
  const AgreementPermissionEvent();

  @override
  List<Object> get props => [];
}

class ChangeAgree extends AgreementPermissionEvent {
  final Consent consent;

  const ChangeAgree({
    required this.consent,
  });
}
