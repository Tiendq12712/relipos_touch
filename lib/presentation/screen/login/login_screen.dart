import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:relipos_touch/presentation/screen/login/login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SafeArea(
          child: TextButton(
              onPressed: () => controller.login("admin", "@hopnhat"),
              child: Text("Login")),
        )
      ]),
    );
  }
}
