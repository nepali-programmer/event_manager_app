// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/features/login/domain/usecase/login_usecase.dart';
import 'package:event_manager_app/features/login/domain/usecase/logout_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entity/user.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginUsecase loginUsecase;
  LogoutUsecase logoutUsecase;
  LoginCubit(
    this.loginUsecase,
    this.logoutUsecase,
  ) : super(const LoginState.initial());

  auth({
    String? email,
    String? password,
  }) async {
    emit(const LoginState.loading());
    Either<AppError, User> result = await loginUsecase(
      email: email,
      password: password,
    );
    result.fold(
      (l) => emit(LoginState.failure(l.message)),
      (r) => emit(LoginState.success(r)),
    );
  }

  logout() async {
    await logoutUsecase();
    emit(const LoginState.initial());
  }
}
