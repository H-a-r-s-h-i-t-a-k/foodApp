import 'package:demo/src/Adminfeatures/order/order_screen.dart';
import 'package:demo/src/Adminfeatures/product/product_screen.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class A_homeScreen extends StatelessWidget {
  const A_homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mAppName)),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 70,
        child: Row(children: [
          IconButton.outlined(
            onPressed: () {
              Get.to(() => OrderScreen());
            },
            icon: Icon(Icons.admin_panel_settings_outlined),
          ),
          IconButton.outlined(
            onPressed: () {
              Get.to(() => ProductScreen());
            },
            icon: Icon(Icons.add_outlined),
          ),
          IconButton.outlined(
            onPressed: () {
              Get.to(() => OrderScreen());
            },
            icon: Icon(Icons.checklist_outlined),
          ),
          IconButton.outlined(
            onPressed: () {
              Get.to(() => OrderScreen());
            },
            icon: Icon(Icons.admin_panel_settings_outlined),
          )
        ]),
      )),
    );
  }
}
