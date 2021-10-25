import 'package:bigbakery/constent.dart';
import 'package:bigbakery/size_config.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  static const namedRoute = '/item_screen';
  ItemScreen({Key? key}) : super(key: key);

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  var itemcont = 0;
  var selected = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: kScaffoldColor),
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: Text(
            "Rose cupcakes",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Image.network(
                'https://images.kitchenstories.io/recipeImages/04_26_RoseCupcakes_TitlePicture/04_26_RoseCupcakes_TitlePicture-medium-landscape-150.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.fill),
            SizedBox(
                height: 150,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: selected ? 200.0 : 150.0,
                      height: selected ? 100.0 : 200.0,
                      color: selected ? kScaffoldColor : Colors.black,
                      child: AnimatedAlign(
                          alignment: selected
                              ? Alignment.topRight
                              : Alignment.bottomLeft,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                          child: Text(
                            'Please select the quantity',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selected ? kDarkTextColor : kScaffoldColor,
                            ),
                          )),
                    ),
                  ),
                )),
            SizedBox(
              width: 600,
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 145,
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (itemcont == 0) {
                                  itemcont = 0;
                                } else {
                                  itemcont--;
                                }
                              });
                            },
                            icon: Icon(Icons.remove)),
                      ),
                      Container(
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.all(Radius.circular(0))),
                        child: Center(
                          child: Text(
                            '$itemcont',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (itemcont == 100) {
                                  itemcont = 100;
                                } else {
                                  itemcont++;
                                }
                              });
                            },
                            icon: Icon(Icons.add)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Your purchase Done'),
                      ),
                    );
                    setState(() {
                      itemcont = 0;
                    });
                  },
                  child: Text(
                    'Purchase',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.blueAccent))),
            )
          ],
        ));
  }
}
