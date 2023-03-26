import 'package:dartz/dartz.dart';

import '../../../../core/error/app_error.dart';
import '../entity/user.dart';

abstract class LoginRepository {
  Future<Either<AppError, User>> login(String? email, String? password);
  Future<Either<AppError, String>> logout();
}
