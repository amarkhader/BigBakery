import 'package:bigbakery/constent.dart';
import 'package:bigbakery/size_config.dart';
import 'package:flutter/material.dart';

class WideButton extends StatelessWidget {
  const WideButton({Key? key, required this.onprees, required this.text})
      : super(key: key);
  final Function onprees;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(315),
      height: getProportionateScreenHeight(44),
      child: ElevatedButton(
        child: Text(text),
        onPressed: () {
          onprees();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kSecondaryColor),
        ),
      ),
    );
  }
}
