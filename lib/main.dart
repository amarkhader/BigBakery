import 'package:bigbakery/provider/dataprovider.dart';
import 'package:bigbakery/routes/routes.dart';
import 'package:bigbakery/screens/inro/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constent.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => DataProviderr(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Big Bakery',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: kScaffoldColor,
            elevation: 0,
            iconTheme: IconThemeData(color: kSecondaryColor)),
        scaffoldBackgroundColor: kScaffoldColor,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
