import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relipos_touch/consts/app_style.dart';
import 'package:relipos_touch/presentation/routes/route.dart';
import 'package:relipos_touch/presentation/screen/home/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  void onTapLogout() => Get.offAllNamed(ReliposRoutes.loginRoutes);
  void onTapTableView() => Get.offAllNamed(ReliposRoutes.tableviewRoutes);
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.35,
          width: context.width,
          child: Stack(
            children: [
              SizedBox(
                  width: context.width,
                  child: Image.asset(
                    "assets/images/bgmain.jpg",
                    fit: BoxFit.fill,
                  )),
              Positioned(
                top: 15,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: onTapLogout,
                  child: Image.asset(
                    'assets/icons/icon_v1/IconThoat-07.png',
                    fit: BoxFit.contain,
                    height: context.height * 0.04,
                  ),
                ),
              ),
              Positioned(
                top: context.height * 0.04 + 25,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    'assets/icons/icon_v1/Icondoipass-07.png',
                    fit: BoxFit.contain,
                    height: context.height * 0.04,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.15,
                        child: Image.asset(
                          "assets/icons/LogoOrder-07.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Phục vụ Nguyễn Văn A',
                            style: ReliposTextStyles.getTextStyle(
                                context, FontSize.H2FontSize,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Text('Quản lý kinh doanh trong tầm tay',
              style: ReliposTextStyles.getTextStyle(
                  context, FontSize.H2FontSize,
                  color: Colors.black)),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 5, 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: onTapTableView,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00ADEE)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/IconOrderMon-13.png",
                              height: context.height * 0.1,
                            ),
                          ),
                          Text(
                            'Nhà hàng',
                            style: ReliposTextStyles.getTextStyle(
                                context, FontSize.H3FontSize,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 20, 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00ADEE)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/Icon_Khachve-13.png",
                              height: context.height * 0.1,
                            ),
                          ),
                          Text(
                            'Ra ca',
                            style: ReliposTextStyles.getTextStyle(
                                context, FontSize.H3FontSize,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 5, 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00ADEE)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/IconOrderMon-13.png",
                              height: context.height * 0.1,
                            ),
                          ),
                          Text(
                            'Quản lý bếp',
                            style: ReliposTextStyles.getTextStyle(
                                context, FontSize.H3FontSize,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 20, 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00ADEE)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/IconOrderMon-13.png",
                              height: context.height * 0.1,
                            ),
                          ),
                          Text(
                            'Lễ tân',
                            style: ReliposTextStyles.getTextStyle(
                                context, FontSize.H3FontSize,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
