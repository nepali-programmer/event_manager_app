// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:event_manager_app/features/login/data/source/login_local_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/app_error.dart';
import '../../domain/repository/login_repository.dart';
import '../model/user_model.dart';
import '../source/login_remote_data_source.dart';

@LazySingleton(as: LoginRepository)
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
      late Either<AppError, UserModel> result;
      if (email == null || password == null) {
        result = await loginLocalDataSource.getUserDetail();
      } else {
        result = await loginRemoteDataSource.login(email, password);
      }
      return result;
    } catch (e) {
      String message = '';
      try {
        if (e is DioError &&
            e.response != null &&
            e.response!.data.containsKey('message')) {
          message = e.response!.data['message'];
        }
      } catch (e) {
        message = '';
      }
      return left(AppError(message: message));
    }
  }
}
