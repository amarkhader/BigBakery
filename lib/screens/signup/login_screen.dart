import 'package:bigbakery/constent.dart';
import 'package:bigbakery/provider/dataprovider.dart';
import 'package:bigbakery/screens/explore_screen/shops_screen.dart';
import 'package:bigbakery/services/get_category.dart';
import 'package:bigbakery/size_config.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  static const namedRoute = '/login_screen';
  LogInScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController namecotroller = TextEditingController();

  TextEditingController passwordcotroller = TextEditingController();

  bool _show = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Log in"),
          backgroundColor: kSecondaryColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1wwsIiNjKmBHugN_DFeMRwdr0y8pzyqxZMg&usqp=CAU"),
                  ],
                ),
                TextField(
                  controller: namecotroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "user name",
                      hintText: "User name",
                      icon: Icon(Icons.person)),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: passwordcotroller,
                  obscureText: _show,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "password",
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _show = !_show;
                            });
                          },
                          icon: Icon(
                              _show ? Icons.visibility : Icons.visibility_off)),
                      icon: Icon(Icons.lock)),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => kSecondaryColor)),
                      onPressed: () {
                        Navigator.pushNamed(context, ShopsScreen.namedRoute);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: kScaffoldColor,
                          fontSize: 20,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
