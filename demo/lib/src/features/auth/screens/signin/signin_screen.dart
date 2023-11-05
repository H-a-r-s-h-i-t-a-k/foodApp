import 'package:demo/src/commonWiget/TextWidget/customTextfield.dart';
import 'package:demo/src/commonWiget/form/formHeaderWidget.dart';
import 'package:demo/src/constants/colors.dart';
import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/sizes.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:demo/src/features/auth/screens/signin/widget/login_footer.dart';
import 'package:flutter/material.dart';

import 'widget/signform.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeh = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
            child: Column(
              children: [
                HeaderForm(
                    size: sizeh,
                    img: mWelcomeimg,
                    title: mSignUpPagetitle,
                    subtitle: mSignUPSubPagetitle),
                SignForm(),
                SizedBox(
                  height: mDefaultSize,
                ),
                SigninFooter(sizeh: sizeh),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
