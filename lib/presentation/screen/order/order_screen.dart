import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relipos_touch/presentation/routes/route.dart';
import 'package:relipos_touch/presentation/screen/order/order_controller.dart';

class OrderScreen extends GetWidget<OrderController> {
   OrderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    void onTaptable() => Get.offAllNamed(ReliposRoutes.tableviewRoutes);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gọi món'),
        centerTitle: true,
        leading:
            IconButton(onPressed: onTaptable, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(children: [
        SizedBox(
          height: context.height * 0.2,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(5),
            itemCount: 10,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
            itemBuilder: (context, index) {
              return buildCard(index);
            },
          ),
        ),
        SizedBox(
          height: context.height * 0.5,
          child: CustomScrollView(
            primary: false,
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    ...containers
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Container> containers = List.generate(10, (index) => Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.green[600],
                      child: const Text('Revolution, they...'),
                    ),);

}

Widget buildCard(int index) => Container(
      color: Colors.blue,
      width: 150,
      height: 150,
      child: const Center(child: Text('Relisoft')),
    );
