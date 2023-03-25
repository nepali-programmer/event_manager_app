import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed(toJson: false)
class UserModel extends User with _$UserModel {
  const factory UserModel({
    required String name,
    required String email,
    required String token,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
