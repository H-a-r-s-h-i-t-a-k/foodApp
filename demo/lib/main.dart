import 'package:demo/src/features/auth/screens/splash/splash.dart';
import 'package:demo/src/features/auth/screens/start/Ascreen.dart';
import 'package:demo/src/features/home/hscreen.dart';
import 'package:demo/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

// import 'auth/Ascreen.dart';

Gradient lgradiant = RadialGradient(
  radius: 3.0,
  // focalRadius: 4.0,
  colors: [
    Color.fromARGB(255, 253, 253, 253),
    Color.fromARGB(255, 6, 230, 246),
    Color.fromARGB(255, 0, 0, 0)
  ],

  stops: [0.0, 0.4, 1.0],
);
Gradient dgradiant = RadialGradient(
  radius: 3.0,
  // focalRadius: 4.0,
  colors: [
    Color.fromARGB(134, 2, 120, 126),
    Color.fromARGB(255, 191, 188, 188),
    Color.fromARGB(157, 0, 0, 0),
  ],

  stops: [0.0, 0.7, 1.0],
);
final ColorScheme lColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.orange, brightness: Brightness.light);
final ColorScheme dColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.brown, brightness: Brightness.dark);
void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Chinese",
      debugShowCheckedModeBanner: false,
      theme: Apptheme.lighttheme,

      darkTheme: Apptheme.darktheme,

      themeMode: ThemeMode.system,

      // home:Provider.of<UserProvider>(context)
      home: SplashSc(),
      // AuthScreen(),
    );
  }
}
