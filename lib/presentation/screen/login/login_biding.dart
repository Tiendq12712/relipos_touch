import 'package:get/get.dart';
import 'package:relipos_touch/data/service/login/login_service.dart';
import 'package:relipos_touch/presentation/screen/login/login_controller.dart';

class LoginBiding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginController());
    Get.lazyPut<LoginService>(() => LoginServiceImpl());
  }
}
