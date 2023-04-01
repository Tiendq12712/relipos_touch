import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relipos_touch/consts/app_colors.dart';

class TableViewController extends GetxController {
  List<ItemBottom> items = [
ItemBottom(route: "",title: "Thông tin phiếu",image: "assets/icons/Icon_TTphieu-13.png", color: AppColors.blue),
ItemBottom(route: "",title: "Danh sách phiếu",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.blue),
ItemBottom(route: "",title: "Thêm món",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.blue),
ItemBottom(route: "",title: "Check món",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.aqua),
ItemBottom(route: "",title: "Kiểm tra order",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.purple),
ItemBottom(route: "",title: "Chuyển bàn",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.aqua),
ItemBottom(route: "",title: "Ghép bàn",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.aqua),
ItemBottom(route: "",title: "Kết bàn",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.purple),
ItemBottom(route: "",title: "Đóng bàn",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.red),
ItemBottom(route: "",title: "Khách về",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.red),
ItemBottom(route: "",title: "In tổng bàn",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.purple),
ItemBottom(route: "",title: "In tạm tính",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.blue),
ItemBottom(route: "",title: "Thanh toán",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.aqua),
ItemBottom(route: "",title: "Danh sách phụ lục",image: "assets/icons/Icon_Thanhtoan-13.png", color: AppColors.blue),
  ];
}

class ItemBottom {
  String route;
  String image;
  String title;
  Color color;
ItemBottom({required this.route,required this.image,required this.title, required this.color});

}
