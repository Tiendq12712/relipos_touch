import 'package:get/get.dart';
import 'package:relipos_touch/data/service/login/login_request.dart';
import 'package:relipos_touch/data/service/login/login_response.dart';
import 'package:relipos_touch/data/service/service.dart';

abstract class LoginService {
  Future<LoginResponse> login(LoginRequest loginRequest);
}

class LoginServiceImpl extends LoginService {
  final service = Get.find<ServiceProvider>();
  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    var response = await service.makePost('/api/LoginView/login',
        data: loginRequest.toJson());
    LoginResponse loginResponse = LoginResponse.fromJson(response);
    return loginResponse;
  }
}
