enum ImageType {
  businessCertificate,
  idCard,
  marketLogo,
  receipt;

  String get text => switch(this) {
    ImageType.businessCertificate => 'BUSINESS_REGISTRATION_CERTIFICATE',
    ImageType.idCard => 'ID_CARD',
    ImageType.marketLogo => 'MARKET_LOGO',
    ImageType.receipt => 'RECEIPT',
  };
}
