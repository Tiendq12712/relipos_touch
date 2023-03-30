import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relipos_touch/presentation/routes/route.dart';
import 'package:relipos_touch/presentation/screen/order/order_controller.dart';

class OrderScreen extends GetWidget<OrderController> {
  @override
  Widget build(BuildContext context) {
    void onTaptable() => Get.offAllNamed(ReliposRoutes.tableviewRoutes);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gọi món'),
        centerTitle: true,
        leading:
            IconButton(onPressed: onTaptable, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Column(children: []),
    );
  }
}
