// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/features/login/domain/usecase/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entity/user.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  Login login;
  LoginCubit(
    this.login,
  ) : super(const LoginState.initial());

  auth({
    String? email,
    String? password,
  }) async {
    emit(const LoginState.loading());
    Either<AppError, User> result = await login(
      email: email,
      password: password,
    );
    result.fold(
      (l) => emit(const LoginState.failure()),
      (r) => emit(LoginState.success(r)),
    );
  }
}
