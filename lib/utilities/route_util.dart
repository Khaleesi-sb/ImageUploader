import 'package:flutter/material.dart';

class RouteUtil{

  static Route createSlidePageRoute(Widget destination) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => destination,
      transitionDuration: const Duration(milliseconds: 1000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;

        var tween = Tween(begin: begin, end: end);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

}