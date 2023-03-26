// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:event_manager_app/features/login/data/source/login_local_data_source.dart';

import '../../../../core/error/app_error.dart';
import '../../domain/repository/login_repository.dart';
import '../model/user_model.dart';
import '../source/login_remote_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;
  final LoginLocalDataSource loginLocalDataSource;
  LoginRepositoryImpl({
    required this.loginRemoteDataSource,
    required this.loginLocalDataSource,
  });
  @override
  Future<Either<AppError, UserModel>> login(
    String? email,
    String? password,
  ) async {
    try {
      if (email == null || password == null) {
        UserModel user = await loginLocalDataSource.getUserDetail();
        return Right(user);
      } else {
        UserModel user = await loginRemoteDataSource.login(email, password);
        return Right(user);
      }
    } catch (e) {
      return Left(AuthenticationError());
    }
  }
}
