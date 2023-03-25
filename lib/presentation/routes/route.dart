import 'package:get/get.dart';
import 'package:relipos_touch/presentation/screen/home/home_biding.dart';
import 'package:relipos_touch/presentation/screen/home/home_screen.dart';
import 'package:relipos_touch/presentation/screen/login/login_biding.dart';
import 'package:relipos_touch/presentation/screen/login/login_screen.dart';

class ReliposRoutes {
  static const String loginRoutes = "/login";
  static const String homeRoutes = "/home";
}

class RoutePages {
  static final pages = [
    GetPage(
      name: ReliposRoutes.loginRoutes,
      page: () => LoginScreen(),
      binding: LoginBiding(),
    ),
    GetPage(
      name: ReliposRoutes.homeRoutes,
      page: () => HomeScreen(),
      binding: HomeBiding(),
    ),
  ];
}
