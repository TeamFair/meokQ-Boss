enum Flavor {
  dev,
  prod;

  String get text => switch (this) {
    Flavor.dev => 'dev',
    Flavor.prod => 'prod',
  };
}