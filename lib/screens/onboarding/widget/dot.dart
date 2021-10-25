import 'package:bigbakery/constent.dart';
import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({Key? key, required this.isSelctected}) : super(key: key);
  final bool isSelctected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      width: 9,
      height: 9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelctected ? kPrimaryColor : Colors.grey,
      ),
    );
  }
}
