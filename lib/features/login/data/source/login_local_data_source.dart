// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/data/constant/app_constant.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

abstract class LoginLocalDataSource {
  Future<Either<AppError, UserModel>> getUserDetail();
  Future<Either<AppError, String>> logout();
}

@LazySingleton(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  final SharedPreferences preferences;
  LoginLocalDataSourceImpl({
    required this.preferences,
  });
  @override
  Future<Either<AppError, UserModel>> getUserDetail() async {
    String? userModelString = preferences.getString(kUserModelKey);
    if (userModelString != null) {
      return Right(UserModel.fromJson(jsonDecode(userModelString)));
    } else {
      throw Left(AppError());
    }
  }

  @override
  Future<Either<AppError, String>> logout() async {
    try {
      await preferences.remove(kUserModelKey);
      return right('Successfully logged out');
    } catch (e) {
      return left(AppError());
    }
  }
}
