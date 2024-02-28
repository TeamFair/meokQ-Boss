part of 'setting_bloc.dart';

enum Agreement {
  collection,
  email,
  sms;

  String get title {
    return switch (this) {
      Agreement.collection => '개인정보 수집 이용 동의',
      Agreement.email => '이메일 수신 동의',
      Agreement.sms => 'SMS 수신 동의',
    };
  }

  String get content {
    return switch (this) {
      Agreement.collection => '마케팅 및 프로모션 활동에 활용할 수 있도록 허용',
      Agreement.email => '이벤트 및 다양한 혜택정보 이메일 수신 허용',
      Agreement.sms => '이벤트 및 다양한 혜택정보 SMS 수신 허용',
    };
  }

  String get apiText {
    return switch (this) {
      Agreement.collection => 'PROMOTION_MARKETING_BOSS',
      Agreement.email => 'EMAIL_CONSENT_FORM_BOSS',
      Agreement.sms => 'SMS_CONSENT_FORM_BOSS',
    };
  }
}

enum UserState { login, logout, withdraw }

class SettingState extends Equatable {
  final bool collectionAgreement;
  final bool emailAgreement;
  final bool smsAgreement;
  final UserState userState;

  const SettingState({
    required this.collectionAgreement,
    required this.emailAgreement,
    required this.smsAgreement,
    required this.userState,
  });

  SettingState copyWith({
    bool? collectionAgreement,
    bool? emailAgreement,
    bool? smsAgreement,
    UserState? userState,
  }) {
    return SettingState(
      collectionAgreement: collectionAgreement ?? this.collectionAgreement,
      emailAgreement: emailAgreement ?? this.emailAgreement,
      smsAgreement: smsAgreement ?? this.smsAgreement,
      userState: userState ?? this.userState,
    );
  }

  @override
  List<Object?> get props => [
        collectionAgreement,
        emailAgreement,
        smsAgreement,
        userState,
      ];
}
