import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:relipos_touch/presentation/screen/home/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          SizedBox(
            height: context.height*0.35,
            width: context.width,
            child: Stack(
              children: [
          Positioned(
                top: 15,
                left: 15,
                child: Image.asset('assets/icons/icon_v1/IconThoat-07.png',height: 100,),
              ),
          SizedBox(
            width: context.width,
            child: Image.asset(
              "assets/images/bgmain.jpg",
              fit: BoxFit.fill,)
          ),
              ],
            )
          ),
          SizedBox(
            height: context.height*0.65,
            width: context.width,

          )
        ]),
    );
  }
}
