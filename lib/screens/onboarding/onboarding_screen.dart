import 'package:bigbakery/constent.dart';
import 'package:bigbakery/models/onboarding_content.dart';
import 'package:bigbakery/screens/onboarding/widget/dot.dart';
import 'package:bigbakery/screens/onboarding/widget/onboarding_Body.dart';
import 'package:bigbakery/screens/signup/signup_screen.dart';
import 'package:bigbakery/size_config.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  static const namedRoute = '/onboarding_screen';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  List<OnboardingContent> onboardingContentList = [
    OnboardingContent(
        imageURL:
            'https://w7.pngwing.com/pngs/402/185/png-transparent-cupcake-birthday-cake-torte-simple-cupcakes-bakery-logo-watercolor-painting-blue-cream-thumbnail.png',
        text: 'Welcom To your Bakery App',
        subtext: '''   This App For Help You to get what you need
             from any Baker you love'''),
    OnboardingContent(
        imageURL:
            'https://png.pngtree.com/png-vector/20210123/ourlarge/pngtree-exquisite-bakery-clip-art-png-image_2778766.jpg',
        text: 'Welcom To your Bakery App',
        subtext: '''   This App For Help You to get what you need
             from any Baker you love'''),
    OnboardingContent(
        imageURL:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAEf121zkzcs4T11_o_RzfRoUdpfJPOYb16g&usqp=CAU',
        text: 'Welcom To your Bakery App',
        subtext: '''   This App For Help You to get what you need
             from any Baker you love'''),
    OnboardingContent(
        imageURL:
            'https://www.logoground.com/uploads/201857912018-01-123128445bakery-basket.jpg',
        text: 'Welcom To your Bakery App',
        subtext: '''   This App For Help You to get what you need
             from any Baker you love'''),
    OnboardingContent(
        imageURL:
            'https://i.pinimg.com/originals/be/1c/9f/be1c9f669863b6d40e0f62e9a6154652.png',
        text: 'Welcom To your Bakery App',
        subtext: '''   This App For Help You to get what you need
             from any Baker you love'''),
  ];
  void gotoNextpage() {
    _pageController.nextPage(
        duration: kAnimationDuration, curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                child: OnpoardingBody(
                  content: onboardingContentList[index],
                ),
              );
            },
            itemCount: onboardingContentList.length,
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 150,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(onboardingContentList.length, (index) {
                        return Dot(isSelctected: index == _currentIndex);
                      })
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  _currentIndex == onboardingContentList.length - 1
                      ? SizedBox(
                          width: getProportionateScreenWidth(223),
                          height: getProportionateScreenHeight(44),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, SignUpScreen.namedRoute);
                            },
                            child: Text('Get Started'),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(kPrimaryColor)),
                          ))
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, SignUpScreen.namedRoute);
                                },
                                child: Text(
                                  'Skip',
                                  style: TextStyle(color: kSecondaryColor),
                                )),
                            TextButton(
                                onPressed: () {
                                  gotoNextpage();
                                },
                                child: Text(
                                  'Next',
                                  style: TextStyle(color: kSecondaryColor),
                                )),
                          ],
                        ),
                ],
              ))
        ],
      ),
    );
  }
}
