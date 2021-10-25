import 'package:bigbakery/screens/explore_screen/item_screen.dart';
import 'package:bigbakery/screens/explore_screen/items_Screen.dart';
import 'package:bigbakery/screens/explore_screen/shops_screen.dart';
import 'package:bigbakery/screens/onboarding/onboarding_screen.dart';
import 'package:bigbakery/screens/signup/login_screen.dart';
import 'package:bigbakery/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SignUpScreen.namedRoute: (ctx) => SignUpScreen(),
  LogInScreen.namedRoute: (ctx) => LogInScreen(),
  ShopsScreen.namedRoute: (ctx) => ShopsScreen(),
  ItemsScreen.namedRoute: (ctx) => ItemsScreen(),
  ItemScreen.namedRoute: (ctx) => ItemScreen(),
  OnboardingScreen.namedRoute: (ctx) => OnboardingScreen(),
};
