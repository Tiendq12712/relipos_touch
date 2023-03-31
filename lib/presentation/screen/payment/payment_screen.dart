import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relipos_touch/presentation/routes/route.dart';
import 'package:relipos_touch/presentation/screen/payment/payment_controller.dart';

class PaymentScreen extends GetWidget<PaymentController> {
  @override
  Widget build(BuildContext context) {
    void onTaptable() => Get.offAllNamed(ReliposRoutes.tableviewRoutes);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Thanh toán'),
          centerTitle: true,
          leading:
              IconButton(onPressed: onTaptable, icon: Icon(Icons.arrow_back)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                color: Colors.red,
                width: 200,
                height: 100,
                child: const Text('item1'),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Text('item2'),
              ),
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Text('item3'),
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 100,
                color: Colors.yellow,
                child: const Text('item4'),
              )
            ],
          ),
        ));
  }
}
