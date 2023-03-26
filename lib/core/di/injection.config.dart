// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:event_manager_app/core/api/api_url.dart' as _i3;
import 'package:event_manager_app/core/di/injection.dart' as _i11;
import 'package:event_manager_app/core/theme/app_theme.dart' as _i4;
import 'package:event_manager_app/features/login/data/source/login_local_data_source.dart'
    as _i9;
import 'package:event_manager_app/features/login/data/source/login_remote_data_source.dart'
    as _i10;
import 'package:event_manager_app/features/login/domain/repository/login_repository.dart'
    as _i6;
import 'package:event_manager_app/features/login/domain/usecase/login.dart'
    as _i5;
import 'package:event_manager_app/features/login/presentation/cubit/login/login_cubit.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.ApiUrl>(() => _i3.ApiUrl());
    gh.lazySingleton<_i4.AppThemeData>(() => _i4.AppThemeData());
    gh.lazySingleton<_i5.Login>(
        () => _i5.Login(loginRepository: gh<_i6.LoginRepository>()));
    gh.factory<_i7.LoginCubit>(() => _i7.LoginCubit(gh<_i5.Login>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i9.LoginLocalDataSource>(() =>
        _i9.LoginLocalDataSourceImpl(preferences: gh<_i8.SharedPreferences>()));
    gh.lazySingleton<_i10.LoginRemoteDataSource>(
        () => _i10.LoginRemoteDataSourceImpl(
              apiUrl: gh<_i3.ApiUrl>(),
              preferences: gh<_i8.SharedPreferences>(),
            ));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
