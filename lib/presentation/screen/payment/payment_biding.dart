import 'package:get/get.dart';
import 'package:relipos_touch/presentation/screen/payment/payment_controller.dart';

class PaymentBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController);
  }
}
