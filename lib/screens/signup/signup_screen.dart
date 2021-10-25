import 'package:bigbakery/constent.dart';
import 'package:bigbakery/screens/signup/signup_body.dart';
import 'package:bigbakery/widget/wideButton.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';

class SignUpScreen extends StatefulWidget {
  static const namedRoute = '/signup_screen';
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    final phonenumber = TextEditingController();
    SizeConfig(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1wwsIiNjKmBHugN_DFeMRwdr0y8pzyqxZMg&usqp=CAU'),
              ),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Enter your Phone Number',
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Container(
                          alignment: Alignment.center,
                          height: getProportionateScreenHeight(80),
                          width: getProportionateScreenWidth(44),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: Text('+962'),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: getProportionateScreenHeight(44),
                            width: getProportionateScreenWidth(226),
                            child: TextField(
                                controller: phonenumber,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide:
                                          BorderSide(color: kPrimaryColor)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide:
                                          BorderSide(color: kPrimaryColor)),
                                )))
                      ]),
                      SizedBox(
                        height: 60,
                      ),
                      WideButton(
                          onprees: () {
                            
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    SignUpBody(phoneNumber: phonenumber)));
                          },
                          text: ('Next'))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
