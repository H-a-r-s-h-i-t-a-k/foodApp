import 'package:demo/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../../../commonWiget/TextWidget/customTextfield.dart';
import '../../../../../constants/text_str.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomtextFeild(
              obscureText: false,
              customicon: Icon(Icons.email_outlined),
              text: mEmail,
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
            CustomtextFeild(
              obscureText: true,
              customicon: Icon(Icons.password_outlined),
              text: mPassword,
              sf_icon: Icon(Icons.remove_red_eye_outlined),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                            color: Theme.of(context).primaryColorLight,
                            padding: EdgeInsets.all(mDefaultSize),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(mforgotpassTitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Text(
                                    mforgotpassSubTitle,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.mark_email_read_outlined,
                                          size: 60.0,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              mEmail,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge,
                                            ),
                                            Text(
                                              mResetemail,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ));
                },
                child: Text(
                  "Forgot Password ?",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "login".toUpperCase(),
              ),
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
          ],
        ),
      ),
    );
  }
}
