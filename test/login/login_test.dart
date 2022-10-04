import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_unit_test/feature/login/model/login_model.dart';
import 'package:login_unit_test/feature/login/service/login_service.dart';

void main() {
  late LoginService loginService;

  setUp(() {
    final baseOptions = BaseOptions(baseUrl: 'https://reqres.in/');
    loginService = LoginService(Dio(baseOptions));
  });
  test('Login Test - eve.holt@reqres.in & cityslicka ', () async {
    final response = await loginService.login(
      const LoginModel(email: 'eve.holt@reqres.in', password: 'cityslicka'),
    );

    expect(response, isNotNull);
  });
}
