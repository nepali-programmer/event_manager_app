// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:event_manager_app/core/api/api_url.dart' as _i3;
import 'package:event_manager_app/core/di/injection.dart' as _i15;
import 'package:event_manager_app/core/theme/app_theme.dart' as _i4;
import 'package:event_manager_app/features/event/domain/repository/event_repository.dart'
    as _i6;
import 'package:event_manager_app/features/event/domain/usecase/event_list_usecase.dart'
    as _i5;
import 'package:event_manager_app/features/login/data/repository/login_repository.dart'
    as _i11;
import 'package:event_manager_app/features/login/data/source/login_local_data_source.dart'
    as _i8;
import 'package:event_manager_app/features/login/data/source/login_remote_data_source.dart'
    as _i9;
import 'package:event_manager_app/features/login/domain/repository/login_repository.dart'
    as _i10;
import 'package:event_manager_app/features/login/domain/usecase/login_usecase.dart'
    as _i12;
import 'package:event_manager_app/features/login/domain/usecase/logout_usecase.dart'
    as _i13;
import 'package:event_manager_app/features/login/presentation/cubit/login/login_cubit.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i5.LoginUsecase>(
        () => _i5.LoginUsecase(eventRepository: gh<_i6.EventRepository>()));
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i8.LoginLocalDataSource>(() =>
        _i8.LoginLocalDataSourceImpl(preferences: gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i9.LoginRemoteDataSource>(
        () => _i9.LoginRemoteDataSourceImpl(
              apiUrl: gh<_i3.ApiUrl>(),
              preferences: gh<_i7.SharedPreferences>(),
            ));
    gh.lazySingleton<_i10.LoginRepository>(() => _i11.LoginRepositoryImpl(
          loginRemoteDataSource: gh<_i9.LoginRemoteDataSource>(),
          loginLocalDataSource: gh<_i8.LoginLocalDataSource>(),
        ));
    gh.lazySingleton<_i12.LoginUsecase>(
        () => _i12.LoginUsecase(loginRepository: gh<_i10.LoginRepository>()));
    gh.lazySingleton<_i13.LogoutUsecase>(
        () => _i13.LogoutUsecase(loginRepository: gh<_i10.LoginRepository>()));
    gh.factory<_i14.LoginCubit>(() => _i14.LoginCubit(
          gh<_i12.LoginUsecase>(),
          gh<_i13.LogoutUsecase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
