import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../commonWiget/TextWidget/customTextfield.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_str.dart';

class SignForm extends StatelessWidget {
  const SignForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomtextFeild(
          obscureText: false,
          customicon: Icon(Icons.person),
          text: 'FullName',
        ),
        SizedBox(
          height: mDefaultSize - 10,
        ),
        CustomtextFeild(
          obscureText: true,
          customicon: Icon(Icons.email_outlined),
          text: mEmail,
        ),
        SizedBox(
          height: mDefaultSize - 10,
        ),
        CustomtextFeild(
          obscureText: false,
          customicon: Icon(Icons.phone_enabled_outlined),
          text: mPhoneNo,
        ),
        SizedBox(
          height: mDefaultSize - 10,
        ),
        CustomtextFeild(
          obscureText: false,
          customicon: Icon(Icons.password_outlined),
          text: mPassword,
        ),
        SizedBox(
          height: mDefaultSize - 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Sign in".toUpperCase(),
          ),
        )
      ],
    ));
  }
}
