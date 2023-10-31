import 'package:demo/main.dart';
import 'package:demo/src/features/auth/widget/phone/otp.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../../commonWiget/TextWidget/customTextfield.dart';
import '../../../../commonWiget/buttonWidget/customElevated.dart';

class Phone_noAuth extends StatelessWidget {
  Phone_noAuth({super.key});

  TextEditingController name_controller = TextEditingController();
  TextEditingController phone_no_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();

  void submit(context) async {
    if (phone_no_controller.text == "") return;

    var appSignatureID = await SmsAutoFill().getAppSignature;
    Map sendOtpData = {
      "phone_no": phone_no_controller.text,
      "app_signature_id": appSignatureID,
    };

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OtpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: isDarkMode ? dgradiant : lgradiant,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(65.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).canvasColor.withOpacity(0.8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomtextFeild(
                          controller: name_controller,
                          customicon: Icon(Icons.person),
                          hintText: "Name",
                          obscureText: false),
                      SizedBox(
                        height: 15,
                      ),
                      CustomtextFeild(
                          controller: email_controller,
                          customicon: Icon(Icons.phone_android),
                          hintText: "Phone Number",
                          obscureText: false),
                      SizedBox(
                        height: 15,
                      ),
                      CustomtextFeild(
                          controller: email_controller,
                          customicon: Icon(Icons.email),
                          hintText: "Email",
                          obscureText: false),
                      SizedBox(
                        height: 15,
                      ),
                      CustomBotton(
                        onTap: () {},
                        text: 'Submit',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
