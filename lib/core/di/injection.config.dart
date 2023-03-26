// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:event_manager_app/core/api/api_url.dart' as _i3;
import 'package:event_manager_app/core/di/injection.dart' as _i18;
import 'package:event_manager_app/core/theme/app_theme.dart' as _i4;
import 'package:event_manager_app/features/event/data/repository/event_repository.dart'
    as _i14;
import 'package:event_manager_app/features/event/data/source/event_remote_data_source.dart'
    as _i12;
import 'package:event_manager_app/features/event/domain/repository/event_repository.dart'
    as _i13;
import 'package:event_manager_app/features/event/domain/usecase/event_list_usecase.dart'
    as _i16;
import 'package:event_manager_app/features/event/presentation/cubit/event/event_cubit.dart'
    as _i17;
import 'package:event_manager_app/features/login/data/repository/login_repository.dart'
    as _i9;
import 'package:event_manager_app/features/login/data/source/login_local_data_source.dart'
    as _i6;
import 'package:event_manager_app/features/login/data/source/login_remote_data_source.dart'
    as _i7;
import 'package:event_manager_app/features/login/domain/repository/login_repository.dart'
    as _i8;
import 'package:event_manager_app/features/login/domain/usecase/login_usecase.dart'
    as _i10;
import 'package:event_manager_app/features/login/domain/usecase/logout_usecase.dart'
    as _i11;
import 'package:event_manager_app/features/login/presentation/cubit/login/login_cubit.dart'
    as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

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
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i6.LoginLocalDataSource>(() =>
        _i6.LoginLocalDataSourceImpl(preferences: gh<_i5.SharedPreferences>()));
    gh.lazySingleton<_i7.LoginRemoteDataSource>(
        () => _i7.LoginRemoteDataSourceImpl(
              apiUrl: gh<_i3.ApiUrl>(),
              preferences: gh<_i5.SharedPreferences>(),
            ));
    gh.lazySingleton<_i8.LoginRepository>(() => _i9.LoginRepositoryImpl(
          loginRemoteDataSource: gh<_i7.LoginRemoteDataSource>(),
          loginLocalDataSource: gh<_i6.LoginLocalDataSource>(),
        ));
    gh.lazySingleton<_i10.LoginUsecase>(
        () => _i10.LoginUsecase(loginRepository: gh<_i8.LoginRepository>()));
    gh.lazySingleton<_i11.LogoutUsecase>(
        () => _i11.LogoutUsecase(loginRepository: gh<_i8.LoginRepository>()));
    gh.lazySingleton<_i12.EventRemoteDataSource>(
        () => _i12.EventRemoteDataSourceImpl(
              localDataSource: gh<_i6.LoginLocalDataSource>(),
              apiUrl: gh<_i3.ApiUrl>(),
            ));
    gh.lazySingleton<_i13.EventRepository>(() => _i14.EventRepositoryImpl(
        eventRemoteDataSource: gh<_i12.EventRemoteDataSource>()));
    gh.factory<_i15.LoginCubit>(() => _i15.LoginCubit(
          gh<_i10.LoginUsecase>(),
          gh<_i11.LogoutUsecase>(),
        ));
    gh.lazySingleton<_i16.EventListUsecase>(() =>
        _i16.EventListUsecase(eventRepository: gh<_i13.EventRepository>()));
    gh.factory<_i17.EventCubit>(() => _i17.EventCubit(
          gh<_i11.LogoutUsecase>(),
          gh<_i16.EventListUsecase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
