import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:relipos_touch/client/service.dart';

class MainBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceProvider>(() => ServiceProvider(), fenix: true);
  }
}
