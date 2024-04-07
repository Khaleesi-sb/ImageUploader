import 'package:flutter/material.dart';
import 'package:splash_login_upload_app/widgets/inline_text.dart';
import 'package:splash_login_upload_app/widgets/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IntrinsicWidth(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/codeland_logo_1.png"),
                          Image.asset("assets/images/codeland_logo_2.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset("assets/images/kiosk.png"),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset("assets/images/HCE.png"),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const LoginForm(),
                    // Spacer(),
                  ],
                ),
                const Spacer(),
                const IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InlineText(text: "For Assistance & Login Details Contact: ", inlineText: ""),
                          ],
                        ),
                        InlineText(
                            text: "English, Kannada & Hindi    :",
                            inlineText: " 7406333800"
                        ),
                        InlineText(
                            text: "English, Kannada & Hindi    :",
                            inlineText: " 9071386515"
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: InlineText(text: "v1.7 © 2023, Codeland Infosolutions Pvt Ltd.", inlineText: ""),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
