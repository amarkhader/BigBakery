import 'package:bigbakery/constent.dart';
import 'package:bigbakery/provider/dataModel.dart';
import 'package:bigbakery/screens/explore_screen/item_screen.dart';
import 'package:bigbakery/size_config.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final DataModel _dataModel;

  CardView(this._dataModel);
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ItemScreen.namedRoute);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: getProportionateScreenHeight(300),
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('${_dataModel.image}'),
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${_dataModel.name}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kDarkTextColor),
                          ),
                          Row(
                            children: [
                              Text(
                                '20 %',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.local_offer_outlined,
                                color: Colors.red,
                              ),
                            ],
                          )
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Price: ${_dataModel.price}',
                      style: TextStyle(
                          color: kGreencolors, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
