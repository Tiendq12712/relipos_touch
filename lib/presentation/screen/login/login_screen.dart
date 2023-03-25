import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:relipos_touch/consts/app_style.dart';
import 'package:relipos_touch/presentation/compoments/relipos_input.dart';
import 'package:relipos_touch/presentation/screen/login/login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SafeArea(child: SizedBox(height: 30)),
          const Text('Tai khoan', style: ReliposTextStyles.small),
          ReLiPostInput(
            controller: controller.usernameController,
          ),
          const SizedBox(height: 20),
          const Text('Mat khau'),
          const SizedBox(height: 10),
          ReLiPostInput(
            security: true,
            controller: controller.passController,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(onPressed: () => controller.login(), child: const Text("Login")),
          )
        ]),
      ),
    );
  }
}
