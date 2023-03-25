import 'package:get/get.dart';
import 'package:relipos_touch/data/service/login/login_request.dart';
import 'package:relipos_touch/data/service/login/login_response.dart';
import 'package:relipos_touch/client/service.dart';

abstract class LoginService {
  Future<LoginResponse> login(LoginRequest loginRequest);
}

class LoginServiceImpl extends LoginService {
  final service = Get.find<ServiceProvider>();

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    try {
      var response = await service.post('/api/LoginView/login', data: loginRequest.toJson());
      if (response.data == null) {
        throw Exception('Login failed');
      }
      LoginResponse loginResponse = LoginResponse.fromJson(response.data);
      return loginResponse;
    } catch (e) {
      rethrow;
    }
  }
}
