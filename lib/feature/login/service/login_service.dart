import 'package:dio/dio.dart';

import '../../../core/api_const.dart';
import '../../../product/model/token_model.dart';
import '../model/login_model.dart';

abstract class ILoginService {
  final Dio networkManager;

  ILoginService(this.networkManager);

  Future<TokenModel?> login(LoginModel model);
}

class LoginService extends ILoginService {
  LoginService(Dio networkManager) : super(networkManager);

  @override
  Future<TokenModel?> login(LoginModel model) async {
    var response = await networkManager.post(loginPath, data: model.toJson());

    return TokenModel().fromJson(response.data);
  }
}
