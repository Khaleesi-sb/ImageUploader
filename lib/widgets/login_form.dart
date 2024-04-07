import 'package:flutter/material.dart';
import 'package:splash_login_upload_app/screens/image_upload.dart';
import 'package:splash_login_upload_app/widgets/button.dart';

import '../utilities/route_util.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  void handleOnPress() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(context, RouteUtil.createSlidePageRoute(const ImageUpload()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                // keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                controller: _username,
                decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Color(0xFF887E7E)))),

              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Color(0xFF887E7E))),
                    labelText: 'Password', labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                ),),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Button(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  verticalPadding: 10,
                  isPrimary: true,
                  handleOnPress: handleOnPress,
                  buttonText: "Login",
                ),
              )
            ],
          )),
    );
  }
}
