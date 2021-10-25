import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = 0;
  static double screenHeight = 0;

  SizeConfig(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
  }
}

double getProportionateScreenHeight(double inHeight) {
  return SizeConfig.screenHeight * inHeight / 812;
}

double getProportionateScreenWidth(double inWidth) {
  return SizeConfig.screenWidth * inWidth / 375;
}