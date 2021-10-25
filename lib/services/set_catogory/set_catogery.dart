import 'package:bigbakery/constent.dart';
import 'package:bigbakery/models/json_post_Model.dart';
import 'package:flutter/material.dart';

class SetCatogery extends StatefulWidget {
  const SetCatogery({Key? key}) : super(key: key);

  @override
  _SetCatogeryState createState() => _SetCatogeryState();
}

class _SetCatogeryState extends State<SetCatogery> {
  final imageUrl = TextEditingController();
  // final _phoneNumber = TextEditingController();
  final _name = TextEditingController();
  final _details = TextEditingController();
  late Item itemsweet1,
      itemsweet2,
      itemsweet3,
      itemsweet4,
      itemsweet5,
      itemsweet6,
      itemsweet7;
  late Item itembread1,
      itembread2,
      itembread3,
      itembread4,
      itembread5,
      itembread6,
      itembread7;
  late Cat cat;
  late Cold swwet;
  late Cold bred;

  @override
  void initState() {
    super.initState();

    itembread1 = Item(
        price: '0.30 JD',
        img:
            'https://www.homestratosphere.com/wp-content/uploads/2020/07/lavash-bread-july222020-min.jpg',
        name: 'Lavash Bread');
    itembread2 = Item(
        price: '1.0  JD',
        img:
            'https://www.saveur.com/uploads/2019/04/18/EIAXE4GPQ5LYQ7TGFGVMZKXXCI.jpg',
        name: 'Brioche bread');
    itembread3 = Item(
        price: '1.5 JD',
        img:
            'https://www.homestratosphere.com/wp-content/uploads/2020/07/multigrain-bread-july222020-min.jpg',
        name: 'Multigrain Bread');
    itembread4 = Item(
        price: '1.25 JD',
        img:
            'https://www.homestratosphere.com/wp-content/uploads/2020/07/soda-bread-july222020-min.jpg',
        name: 'Soda Bread');
    itembread5 = Item(
        price: '0.5 JD',
        img:
            'https://www.homestratosphere.com/wp-content/uploads/2020/07/yufka-bread-july222020-min.jpg',
        name: 'Yufka Bread');
    itembread6 = Item(
        price: '0.75 JD',
        img:
            'https://www.homestratosphere.com/wp-content/uploads/2020/07/english-muffins-july222020-min.jpg',
        name: 'English Muffins');
    itembread7 = Item(
        price: '0.5 JD',
        img:
            'https://www.homestratosphere.com/wp-content/uploads/2020/07/tortilla-bread-july222020-min-e1595407483238.jpg',
        name: 'Tortilla');

    itemsweet1 = Item(
        price: '1.5 JD',
        img:
            'https://images.kitchenstories.io/recipeImages/04_26_RoseCupcakes_TitlePicture/04_26_RoseCupcakes_TitlePicture-medium-landscape-150.jpg',
        name: 'Rose cupcakes');
    itemsweet2 = Item(
        price: '0.5 JD',
        img:
            'https://images.kitchenstories.io/recipeImages/R1022-photo-final-4x3/R1022-photo-final-4x3-medium-landscape-150.jpg',
        name: 'Orange-almond cake');
    itemsweet3 = Item(
        price: '2.0 JD',
        img:
            'https://images.kitchenstories.io/recipeImages/ChocolateCake_Final/ChocolateCake_Final-medium-landscape-150.jpg',
        name: 'Flourless chocolate cake');
    itemsweet4 = Item(
        price: '0.5 JD',
        img:
            'https://images.kitchenstories.io/recipeImages/Baileys_Macarons_1x1/Baileys_Macarons_1x1-medium-landscape-150.jpg',
        name: 'Irish coffee macarons');
    itemsweet5 = Item(
        price: '1.5 JD',
        img:
            'https://www.bakepedia.com/wp-content/uploads/2014/10/Nudo-Al-caffe-1.jpg',
        name: 'Marbled coffee cake');
    itemsweet6 = Item(
        price: '0.75 JD',
        img:
            'https://images.kitchenstories.io/recipeImages/R859-photo-final-4x3/R859-photo-final-4x3-medium-landscape-150.jpg',
        name: 'Apple crumble in a glass');
    itemsweet7 = Item(
        price: '1.25 JD',
        img:
            'https://www.taabkh.com/files/article/2020/02/digestives-biscuits.jpg',
        name: 'Digestive Biscuits');

    Map<String, Item> sweetitems = {
      'it1': itemsweet1,
      'it2': itemsweet2,
      'it3': itemsweet3,
      'it4': itemsweet4,
      'it5': itemsweet5,
      'it6': itemsweet6,
      'it7': itemsweet7,
    };
    Map<String, Item> breditems = {
      'it1': itembread1,
      'it2': itembread2,
      'it3': itembread3,
      'it4': itembread4,
      'it5': itembread5,
      'it6': itembread6,
      'it7': itembread7,
    };

    swwet = Cold(items: sweetitems);
    bred = Cold(
      items: breditems,
    );
    cat = Cat(sweets: swwet, braed: bred);
  }

  @override
  Widget build(BuildContext context) {
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
                  controller: imageUrl,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "imageUrl",
                      hintText: "imageUrl",
                      filled: true,
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.image,
                        color: kSecondaryColor,
                      )),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: _details,
                  decoration: InputDecoration(
                      hintText: "details*",
                      filled: true,
                      labelText: "details",
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.details,
                        color: kSecondaryColor,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => kSecondaryColor)),
                      onPressed: () {
                      
                        // Navigator.of(context).pushNamed(LogInScreen.namedRoute);
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
}/*


 // Navigator.of(context).pushNamed(LoginScreen.namedRoute);
                _namee.text = _dataProvider.listUsers[0].name;
                _password.text = _dataProvider.listUsers[0].password;
                _email.text = _dataProvider.listUsers[0].email;
                _phoneNumber.text = _dataProvider.listUsers[0].phoneNumber;
                //log in screen
                */