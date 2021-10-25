import 'package:bigbakery/constent.dart';
import 'package:bigbakery/screens/explore_screen/items_screen.dart';
import 'package:bigbakery/size_config.dart';
import 'package:bigbakery/widget/card_shop.dart';
import 'package:flutter/material.dart';

class ShopsScreen extends StatefulWidget {
  static const namedRoute = '/shops_screen';
  ShopsScreen({Key? key}) : super(key: key);

  @override
  _CardViewsState createState() => _CardViewsState();
}

class _CardViewsState extends State<ShopsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
                child: Text(
                  'Big Bakery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text('Purchases'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: kScaffoldColor,
          ),
          centerTitle: true,
          title: Text(
            'Shops Scren',
            style: TextStyle(color: kScaffoldColor),
          ),
          backgroundColor: Colors.brown,
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ItemsScreen.namedRoute);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  getShops(
                      'https://ae01.alicdn.com/kf/HTB1yKhSJpzqK1RjSZFCq6zbxVXaN/Bakery-Shop-Logo-Wall-Sticker-Bakeshop-Kitchen-Cafe-Vinyl-Decal-Home-Room-Interior-Decoration-Waterproof-High.jpg_Q90.jpg_.webp',
                      'Delevery 1.75 Jd',
                      'Local Bakery',
                      'in 15 m'),
                  SizedBox(
                    height: 50,
                  ),
                  getShops(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgr7Xj8A6KpgDlpWRqP73lSjoH4-dmeH-6DA&usqp=CAU',
                      'Delevery 1 Jd',
                      'Jawad Bakery',
                      'in 45 m'),
                  SizedBox(
                    height: 50,
                  ),
                  getShops(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrXJ53g51FGSvUIH7zXLzOfU3ua2V1kS52mg&usqp=CAU',
                      'Delevery 1.25 Jd',
                      'Gith Bakery',
                      'in 25 m'),
                  SizedBox(
                    height: 50,
                  ),
                  getShops(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTccyJrx7nJ7kQHrfP3V8sCgUT3C3tnIPqVrg&usqp=CAU',
                      'Delevery 1.5 Jd',
                      'Biet Bakery',
                      'in 35 m'),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
