import 'package:get/get.dart';
import 'package:relipos_touch/presentation/screen/home/home_controller.dart';

class HomeBiding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
  }
}
