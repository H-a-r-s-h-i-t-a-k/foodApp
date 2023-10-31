import 'package:demo/src/constants/colors.dart';
import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/sizes.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:demo/src/features/auth/screens/login.dart';
import 'package:demo/src/features/auth/widget/phone/phone_no.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isClick = true;
  bool animate = false;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500));
    animate = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var height = MediaQuery.of(context).size.height;
    // Widget currentScreen = LoginScreen();
    // Widget currentScreen = isClick ? const AuthScreen() : Phone_noAuth();
    return Scaffold(
      backgroundColor: isDark ? mDarkColor : mPrimaryColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            // bottom: animate ? ,
            duration: Duration(milliseconds: 1600),
            child: Container(
              padding: EdgeInsets.all(mDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    height: height * 0.48,
                    width: 700,
                    image: AssetImage(mWelcomeimg2),
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        mWelcomeTitle,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        mWelcomeSubTitle,
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "login".toUpperCase(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          style: Theme.of(context).outlinedButtonTheme.style,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Signup".toUpperCase(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          style: Theme.of(context).elevatedButtonTheme.style,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
