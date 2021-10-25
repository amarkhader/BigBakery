import 'package:bigbakery/constent.dart';
import 'package:bigbakery/provider/dataprovider.dart';
import 'package:bigbakery/size_config.dart';
import 'package:bigbakery/widget/cardView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsScreen extends StatefulWidget {
  static const namedRoute = '/items_screen';
  @override
  _TesssstState createState() => _TesssstState();
}

class _TesssstState extends State<ItemsScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kScaffoldColor),
        backgroundColor: Colors.brown,
        title: Text(
          "Items Screen",
          style: TextStyle(color: kScaffoldColor),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Bread',
            icon: Icon(
              Icons.bakery_dining_rounded,
              color: Colors.brown,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Sweets',
            icon: Icon(
              Icons.cake_outlined,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      body: Consumer<DataProviderr>(
        builder: (__, provider, _) {
          return _currentIndex == 0
              ? ListView.builder(
                  itemCount: provider.listB.length,
                  itemBuilder: (_, index) {
                    return CardView(provider.listB[index]);
                  },
                )
              : ListView.builder(
                  itemCount: provider.listS.length,
                  itemBuilder: (_, index) {
                    return CardView(provider.listS[index]);
                  },
                );
        },
      ),
    );
  }
}
