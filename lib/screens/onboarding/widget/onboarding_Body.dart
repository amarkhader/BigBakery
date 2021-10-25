import 'package:bigbakery/models/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnpoardingBody extends StatelessWidget {
  OnpoardingBody({
    Key? key,
    required this.content,
  }) : super(key: key);
  final OnboardingContent content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Image.network(content.imageURL),
            
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.blueGrey[200],
                  child: Column(
                    children: [
                      Text(
                        content.text,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            content.subtext,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
