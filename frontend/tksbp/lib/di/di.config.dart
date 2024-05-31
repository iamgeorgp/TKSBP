// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import '../features/log/log.dart' as _i5;
import '../features/log/logger.dart' as _i6;
import '../routes/app_router/app_router.dart' as _i3;
import '../services/tksbp_service.dart' as _i11;
import '../storage/secure_storage/secure_storage.dart' as _i8;
import '../storage/storage.dart' as _i7;
import 'di.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.lazySingleton<_i4.Logger>(() => appModule.createLogger());
    gh.lazySingleton<_i5.Log>(() => _i6.Logger(gh<_i4.Logger>()));
    gh.lazySingleton<_i7.Storage>(
        () => _i8.SecureStorage(gh<_i9.FlutterSecureStorage>()));
    gh.lazySingleton<_i10.Dio>(
      () => appModule.tksbpClient(gh<_i5.Log>()),
      instanceName: 'TKSBPClient',
    );
    gh.singleton<_i11.TKSBPService>(
        () => _i11.TKSBPService(gh<_i10.Dio>(instanceName: 'TKSBPClient')));
    return this;
  }
}

class _$AppModule extends _i12.AppModule {}
