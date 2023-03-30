import 'package:get/get.dart';
import 'package:relipos_touch/presentation/screen/order/order_controller.dart';

class OrderBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderController);
  }
}
