import 'package:get/get.dart';
import 'package:relipos_touch/presentation/screen/home/home_biding.dart';
import 'package:relipos_touch/presentation/screen/home/home_screen.dart';
import 'package:relipos_touch/presentation/screen/login/login_biding.dart';
import 'package:relipos_touch/presentation/screen/login/login_screen.dart';
import 'package:relipos_touch/presentation/screen/order/order_biding.dart';
import 'package:relipos_touch/presentation/screen/order/order_screen.dart';
import 'package:relipos_touch/presentation/screen/payment/payment_biding.dart';
import 'package:relipos_touch/presentation/screen/payment/payment_screen.dart';
import 'package:relipos_touch/presentation/screen/tableview/tableview_biding.dart';
import 'package:relipos_touch/presentation/screen/tableview/tableview_screen.dart';

class ReliposRoutes {
  static const String loginRoutes = "/login";
  static const String homeRoutes = "/home";
  static const String tableviewRoutes = "/tableview";
  static const String orderRoutes = "/order";
  static const String paymentRoutes = "/payment";
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
    GetPage(
      name: ReliposRoutes.tableviewRoutes,
      page: () => TableViewScreen(),
      binding: TableViewBiding(),
    ),
    GetPage(
      name: ReliposRoutes.orderRoutes,
      page: () => OrderScreen(),
      binding: OrderBiding(),
    ),
    GetPage(
      name: ReliposRoutes.paymentRoutes,
      page: () => PaymentScreen(),
      binding: PaymentBiding(),
    ),
  ];
}
