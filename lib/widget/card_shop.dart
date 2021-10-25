import 'package:bigbakery/constent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getShops(String img, String delv, String name, String dtime) {
  return Stack(
    children: [
      Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(img),
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
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.delivery_dining_outlined),
                      Text(dtime)
                    ],
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              delv,
              style:
                  TextStyle(color: kGreencolors, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ],
  );
}
