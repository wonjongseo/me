import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      required this.mobile,
      this.mobileLarge,
      this.tablet,
      required this.desktop});

  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;
  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1030;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1030;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    print('screen width : ${_size.width}');
    print('screen height : ${_size.height}');
    if (_size.width >= 1030) {
      print('desktop');
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      print('tablet');
      return tablet!;
    } else if (_size.width >= 450 && mobileLarge != null) {
      print('mobileLarge');
      return mobileLarge!;
    } else {
      print('mobile');
      return mobile;
    }
  }
}
