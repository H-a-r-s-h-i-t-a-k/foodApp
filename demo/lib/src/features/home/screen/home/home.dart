import 'package:demo/src/constants/sizes.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:demo/src/features/payment/screen/pyscreen.dart';
import 'package:demo/src/repository/auth_repo/authentication_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          leadingWidth: size.width * 0.2,
          leading: Icon(
            Icons.menu,
            size: 40,
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text(mAppName, style: Theme.of(context).textTheme.titleLarge),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(mDashboardPadding),
          child: ElevatedButton(
              onPressed: () {
                Get.to(() => const Pyscreen());
                // AuthenticationRepo.instance.logout();
              },
              child:
                  GestureDetector(onTap: () {}, child: Text("hello google"))),
        )),
      ),
    );
  }
}
