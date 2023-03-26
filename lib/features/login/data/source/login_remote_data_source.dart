// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:event_manager_app/core/api/api_url.dart';
import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/data/constant/app_constant.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

abstract class LoginRemoteDataSource {
  Future<Either<AppError, UserModel>> login(String email, String password);
}

@LazySingleton(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final SharedPreferences preferences;
  final ApiUrl apiUrl;
  LoginRemoteDataSourceImpl({
    required this.apiUrl,
    required this.preferences,
  });
  @override
  Future<Either<AppError, UserModel>> login(
    String email,
    String password,
  ) async {
    Dio dio = Dio();
    Response response = await dio.post(
      apiUrl.login,
      data: {
        'email': email,
        'password': password,
      },
      options: Options(
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
    if (response.statusCode == 200) {
      UserModel userModel = UserModel.fromJson(response.data);
      preferences.setString(kUserModelKey, jsonEncode(userModel.toJson()));
      return Right(userModel);
    }
    return Left(
      AppError(
        message: response.data.containsKey('message')
            ? response.data['message']
            : '',
      ),
    );
  }
}
