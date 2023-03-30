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
            const SizedBox(height: 20),
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
                      height: context.height * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ElevatedButton(
                            child: const Text('Close BottomSheet2'),
                            onPressed: () => Navigator.pop(modal2),
                          ),
                          SizedBox(
                              height: context.height * 0.13,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/IconOrderMon-13.png",
                                                height: context.height * 0.1,
                                              ),
                                            ),
                                            Text(
                                              'Thanh toán',
                                              style: ReliposTextStyles
                                                  .getTextStyle(context,
                                                      FontSize.H5FontSize,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/IconOrderMon-13.png",
                                              ),
                                            ),
                                            Text(
                                              'Thanh toán',
                                              style: ReliposTextStyles
                                                  .getTextStyle(context,
                                                      FontSize.H5FontSize,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/IconOrderMon-13.png",
                                              ),
                                            ),
                                            Text(
                                              'Thanh toán',
                                              style: ReliposTextStyles
                                                  .getTextStyle(context,
                                                      FontSize.H5FontSize,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: onTapPayment,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                "assets/icons/IconOrderMon-13.png",
                                              ),
                                            ),
                                            Text(
                                              'Thanh toán',
                                              style: ReliposTextStyles
                                                  .getTextStyle(context,
                                                      FontSize.H5FontSize,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
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
