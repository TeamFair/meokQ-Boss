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
import '../../domain/repository/image_picker/image_picker_repository.dart'
    as _i8;
import '../../domain/repository/image_picker/interface_image_picker.dart'
    as _i7;
import '../../domain/repository/local/inteface_local.dart' as _i9;
import '../../domain/repository/local/local_repository.dart' as _i10;
import '../../domain/repository/user/interface_user.dart' as _i3;
import '../../domain/repository/user/user_repository.dart' as _i4;

const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
  gh.singleton<_i7.InterfaceImagePicker>(
    _i8.ImagePickerRepository(),
    registerFor: {_prod},
  );
  gh.singleton<_i9.InterfaceLocal>(
    _i10.LocalRepository(),
    registerFor: {_prod},
  );
  return getIt;
}
