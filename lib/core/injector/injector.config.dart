// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/api/remote_repository.dart' as _i10;
import '../../data/repository/auth/authentication_repository.dart' as _i4;
import '../../data/repository/image_picker/image_picker_repository.dart' as _i6;
import '../../data/repository/local/local_repository.dart' as _i8;
import '../../domain/repository/api/interface_remote.dart' as _i9;
import '../../domain/repository/auth/interface_authentication.dart' as _i3;
import '../../domain/repository/image_picker/interface_image_picker.dart'
    as _i5;
import '../../domain/repository/local/inteface_local.dart' as _i7;

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
  gh.singleton<_i3.InterfaceAuthentication>(
    _i4.AuthenticationRepository(),
    registerFor: {_prod},
  );
  gh.singleton<_i5.InterfaceImagePicker>(
    _i6.ImagePickerRepository(),
    registerFor: {_prod},
  );
  gh.singleton<_i7.InterfaceLocal>(
    _i8.LocalRepository(),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i9.InterfaceRemote>(
    () => _i10.RemoteRepository.create(gh<_i7.InterfaceLocal>()),
    registerFor: {_prod},
  );
  return getIt;
}
