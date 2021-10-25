import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bigbakery/screens/onboarding/onboarding_screen.dart';
import 'package:bigbakery/size_config.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void initState() {
    super.initState();

    //After 2seconds of time the Introscreen will e opened by bellow code
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context)
            .pushReplacementNamed(OnboardingScreen.namedRoute));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
          child: TextLiquidFill(
        boxHeight: getProportionateScreenHeight(700),
        boxWidth: getProportionateScreenWidth(375),
        boxBackgroundColor: Colors.white,
        text: 'Big Bakery',
        waveColor: Colors.blueGrey,
        textStyle: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
