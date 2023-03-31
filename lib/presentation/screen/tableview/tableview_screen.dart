import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relipos_touch/consts/app_style.dart';
import 'package:relipos_touch/presentation/routes/route.dart';
import 'package:relipos_touch/presentation/screen/tableview/tableview_controller.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class TableViewScreen extends GetWidget<TableViewController> {
  const TableViewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final heightmodal = context.height * 0.45;
    void onTaphome() => Get.offAllNamed(ReliposRoutes.homeRoutes);
    void onTapOrder() => Get.offAllNamed(ReliposRoutes.orderRoutes);
    void onTapPayment() => Get.offAllNamed(ReliposRoutes.paymentRoutes);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sơ đồ bàn'),
        centerTitle: true,
        leading: IconButton(
            onPressed: onTaphome, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.view_list_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('H1FontSize',
                style: ReliposTextStyles.getTextStyle(
                    context, FontSize.H1FontSize)),
            Text('H2FontSize',
                style: ReliposTextStyles.getTextStyle(
                    context, FontSize.H2FontSize)),
            Text('H3FontSize',
                style: ReliposTextStyles.getTextStyle(
                    context, FontSize.H3FontSize)),
            Text('H4FontSize',
                style: ReliposTextStyles.getTextStyle(
                    context, FontSize.H4FontSize)),
            Text('H5FontSize',
                style: ReliposTextStyles.getTextStyle(
                    context, FontSize.H5FontSize)),
            const SizedBox(height: 20),
            SizedBox(
              height: context.height * 0.5,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(5),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 4,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[100],
                    child: const Text("He'd have you all unravel at the"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child: const Text('Heed not the rabble'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: const Text('Revolution, they...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child: const Text('Heed not the rabble'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: const Text('Revolution, they...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child: const Text('Heed not the rabble'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: const Text('Revolution, they...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child: const Text('Heed not the rabble'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: const Text('Sound of screams but the'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Text('Who scream'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[500],
                    child: const Text('Revolution is coming...'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[600],
                    child: const Text('Revolution, they...'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: const Text('ModalBottom1'),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext modal) {
                    return SizedBox(
                      height: context.height * 0.4,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              height: context.height * 0.05,
                              width: context.width,
                            ),
                            const Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(modal),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('ModalBottom2'),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  // backgroundColor: Colors.black,
                  builder: (BuildContext modal2) {
                    return SizedBox(
                      height: heightmodal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            height: heightmodal * 0.12,
                            child: ElevatedButton(
                              child: const Text('Close BottomSheet2'),
                              onPressed: () => Navigator.pop(modal2),
                            ),
                          ),
                          SizedBox(
                              height: heightmodal * 0.21,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF1D58C0)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_TTphieu_13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Thông tin phiếu',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF1D58C0)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_DSphieu-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'DS phiếu',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: onTapOrder,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF1D58C0)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_ThemMon-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Thêm món',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: onTapPayment,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF2696AA)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_Checkmon-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Check món',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                              height: heightmodal * 0.21,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFA000A8)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_KTorder-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Thanh toán',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF2696AA)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_Chuyenban-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Chuyển bàn',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: onTapOrder,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF2696AA)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_Ghepban-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Ghép bàn',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: onTapPayment,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFA000A8)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_Ketban-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Kết bàn',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                              height: heightmodal * 0.21,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFC40606)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_Dongban-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Đóng bàn',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFC40606)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_Khachve-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Khách về',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: onTapOrder,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFA000A8)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_In-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'In tổng bàn',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: onTapPayment,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF1D58C0)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_In-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'In tạm tính',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                              height: heightmodal * 0.21,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: onTapPayment,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF2696AA)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_Thanhtoan-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'Thanh toán',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: context.width * 0.24,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF1D58C0)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/icons/Icon_DSphuluc-13.png",
                                              height: heightmodal * 0.12,
                                            ),
                                          ),
                                          Text(
                                            'DS phụ lục',
                                            style:
                                                ReliposTextStyles.getTextStyle(
                                                    context,
                                                    FontSize.H5FontSize,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: context.width * 0.24),
                                  SizedBox(width: context.width * 0.24),
                                ],
                              )),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class ModalTable extends GetWidget<TableViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
