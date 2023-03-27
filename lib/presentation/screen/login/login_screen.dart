import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:relipos_touch/consts/app_style.dart';
import 'package:relipos_touch/presentation/compoments/relipos_input.dart';
import 'package:relipos_touch/presentation/screen/login/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: context.width,
            child: Image.asset(
              "assets/images/loginbg.jpg",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: controller.formState,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SafeArea(child: SizedBox(height: 30)),
                      SizedBox(
                        height: context.height * 0.3,
                        width: context.width,
                        child: Image.asset(
                            "assets/images/RelisoftLogo_trans-07.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text("Đăng nhập hệ thống",
                                  style: ReliposTextStyles.getTextStyle(
                                      context, FontSize.H1FontSize,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Tên đăng nhập',
                                style: ReliposTextStyles.getTextStyle(
                                  context,
                                  FontSize.H3FontSize,
                                  color: Colors.white,
                                )),
                            const SizedBox(height: 10),
                            ReLiPostInput(
                              validator: (value) =>
                                  Validator.userNameNotEmpty(value),
                              controller: controller.usernameController,
                            ),
                            const SizedBox(height: 20),
                            Text('Mật khẩu',
                                style: ReliposTextStyles.getTextStyle(
                                  context,
                                  FontSize.H3FontSize,
                                  color: Colors.white,
                                )),
                            const SizedBox(height: 10),
                            ReLiPostInput(
                              validator: (value) =>
                                  Validator.passNotEmpty(value),
                              security: true,
                              controller: controller.passController,
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: SizedBox(
                                width: context.width * 0.5,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  onPressed: () => controller.login(),
                                  child: Text(
                                    "Đăng nhập",
                                    style: ReliposTextStyles.getTextStyle(
                                        context, FontSize.H2FontSize,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
