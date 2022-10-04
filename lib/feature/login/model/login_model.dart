// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  final String email;
  final String password;

  const LoginModel({required this.email, required this.password});

  Map<String, dynamic>? toJson() {
    return _$LoginModelToJson(this);
  }
}
