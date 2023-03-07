import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }






  final Widget desktop;
  final Widget tablet;
  final Widget mobileLarge;
  final Widget mobile;

   const Responsive({super.key,
    required this.desktop,
    required this.tablet,
    required this.mobileLarge,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    if (size >= 1024) {
      return desktop;
    } else if (size >= 700) {
      return tablet;
    } else if (size >= 500) {
      return mobileLarge;
    } else {
      return mobile;
    }
  }
}