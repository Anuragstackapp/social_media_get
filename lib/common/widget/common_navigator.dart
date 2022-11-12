import 'package:flutter/material.dart';

class CommonNavigator extends PageRouteBuilder {
  final Widget child;
  final AxisDirection axisDirection;

  CommonNavigator( {required this.child,this.axisDirection = AxisDirection.right})
      : super(
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(3, 0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );
}
