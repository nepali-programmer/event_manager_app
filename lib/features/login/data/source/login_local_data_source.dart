// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/data/constant/app_constant.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

abstract class LoginLocalDataSource {
  Future<UserModel> getUserDetail();
}

@LazySingleton(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  final SharedPreferences preferences;
  LoginLocalDataSourceImpl({
    required this.preferences,
  });
  @override
  Future<UserModel> getUserDetail() async {
    String? userModelString = preferences.getString(kUserModelKey);
    if (userModelString != null) {
      return UserModel.fromJson(jsonDecode(userModelString));
    } else {
      throw AuthenticationError();
    }
  }
}
