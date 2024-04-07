import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_login_upload_app/screens/login.dart';

import '../utilities/route_util.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
        () => Navigator.pushReplacement(context, RouteUtil.createSlidePageRoute(const Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5862A),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(63)),
                border: Border.all(width: 1, color: const Color(0xFFF5862A)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(
                      0.0,
                      10.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 15.0, top: 40, left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/codeland_logo_2.png"),
                  Image.asset("assets/images/codeland_logo_1.png")
                ],
              ),
            )),
      ),
    );
  }
}
