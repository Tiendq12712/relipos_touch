import 'package:get/get.dart';
import 'package:relipos_touch/data/service/login/login_request.dart';
import 'package:relipos_touch/data/service/login/login_response.dart';
import 'package:relipos_touch/data/service/login/login_service.dart';
import 'package:relipos_touch/presentation/routes/route.dart';

class LoginController extends GetxController {
  final loginService = Get.find<LoginService>();

  void onTapGetRoute() => Get.offAllNamed(ReliposRoutes.homeRoutes);

  Future<LoginResponse> login(String userName, String password) async {
    LoginRequest login = LoginRequest(
        userName: userName,
        password: password,
        modId: 5,
        device: Device(
            deviceId: "simulator",
            deviceName: "simulator",
            token:
                "c5JHSe7PTp2dGPuMZnJ08k:APA91bG8ODmZ5FmEWlcXoCp0-qYWEewlUOubfqn5b2NFHgCOjLH3QFM6JWH8cU-yr5wiDYIzzmPyu0cwFcYboQgjzrmhQp6LUR-ORQhfq-",
            posId: 1));
    LoginResponse respone = await loginService.login(login);
    return respone;
  }
}
