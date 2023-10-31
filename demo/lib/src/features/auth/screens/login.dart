import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDarkmode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        "helloo",
        style: Theme.of(context).textTheme.bodyMedium,
      )),
    );
  }
}
