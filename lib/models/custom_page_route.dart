import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;

  CustomPageRoute({required this.child})
      : super(
          transitionDuration: pageDuration,
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) {
            return child;
          },
        );
  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: animation,
      child: child,
    );
  }
}
