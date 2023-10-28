// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/repository/auth/authentication_repository.dart' as _i6;
import '../../domain/repository/auth/interface_authentication.dart' as _i5;
import '../../domain/repository/user/interface_user.dart' as _i3;
import '../../domain/repository/user/user_repository.dart' as _i4;

const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.IntefaceUser>(
    _i4.UserRepository(),
    registerFor: {_prod},
  );
  gh.singleton<_i5.InterfaceAuthenticatoin>(
    _i6.AuthenticationRepository(),
    registerFor: {_prod},
  );
  return getIt;
}
