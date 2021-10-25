import 'package:bigbakery/constent.dart';
import 'package:bigbakery/screens/signup/login_screen.dart';
import 'package:bigbakery/services/addd_new_user.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class SignUpBody extends StatefulWidget {
  final TextEditingController phoneNumber;
  static const namedRoute = '/signup_body';
  SignUpBody({
    required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool _isShowen = true;
  final _name = TextEditingController();
  // final _phoneNumber = TextEditingController();
  final passwordcotroller = TextEditingController();
  final _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      backgroundColor: kScaffoldColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: TextFormField(
                    controller: _name,
                    decoration: InputDecoration(
                        hintText: "Name*",
                        filled: true,
                        labelText: "Name",
                        border: OutlineInputBorder(),
                        icon: Icon(
                          Icons.person,
                          color: kSecondaryColor,
                        )),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: widget.phoneNumber,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      hintText: "phoneNumber",
                      prefixText: "+962",
                      filled: true,
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.phone,
                        color: kSecondaryColor,
                      )),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      hintText: "Email*",
                      filled: true,
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.email,
                        color: kSecondaryColor,
                      )),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: passwordcotroller,
                  obscureText: _isShowen,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "password",
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isShowen = !_isShowen;
                            });
                          },
                          icon: Icon(_isShowen
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      icon: Icon(Icons.lock)),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => kSecondaryColor)),
                      onPressed: () {
                        createUser(_name.text, _email.text,
                            passwordcotroller.text, widget.phoneNumber.text);
                        Navigator.of(context).pushNamed(LogInScreen.namedRoute);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: kScaffoldColor,
                          fontSize: 20,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
