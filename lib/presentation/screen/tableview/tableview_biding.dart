import 'package:get/get.dart';
import 'package:relipos_touch/presentation/screen/tableview/tableview_controller.dart';

class TableViewBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TableViewController());
  }
}
