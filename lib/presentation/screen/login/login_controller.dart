import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:relipos_touch/data/service/login/login_request.dart';
import 'package:relipos_touch/data/service/login/login_service.dart';
import 'package:relipos_touch/client/service.dart';
import 'package:relipos_touch/presentation/dialog/dialog_error.dart';
import 'package:relipos_touch/presentation/routes/route.dart';

class LoginController extends GetxController {
  final loginService = Get.find<LoginService>();
  final usernameController = TextEditingController();
  final passController = TextEditingController();

  void onTapGetRoute() => Get.offAllNamed(ReliposRoutes.homeRoutes);

  Future<void> login() async {
    LoginRequest loginRequest = LoginRequest(
        userName: usernameController.text,
        password: passController.text,
        modId: 5,
        branchId: 2,
        culture: 1,
        device: Device(
            deviceId: "simulator",
            deviceName: "simulator",
            token:
                "c5JHSe7PTp2dGPuMZnJ08k:APA91bG8ODmZ5FmEWlcXoCp0-qYWEewlUOubfqn5b2NFHgCOjLH3QFM6JWH8cU-yr5wiDYIzzmPyu0cwFcYboQgjzrmhQp6LUR-ORQhfq-",
            posId: 1));
    try {
      var respone = await loginService.login(loginRequest);
      ServiceProvider.token = respone.jwtToken ?? "";
      onTapGetRoute();
    } catch (e) {
      showErrorDialog(e);
    }
  }
}
