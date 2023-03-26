// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/features/login/domain/repository/login_repository.dart';
import 'package:injectable/injectable.dart';

import '../entity/user.dart';

@LazySingleton()
class Login {
  final LoginRepository loginRepository;
  Login({
    required this.loginRepository,
  });
  Future<Either<AppError, User>> call({String? email, String? password}) =>
      loginRepository.login(email, password);
}
