import 'dart:convert' show jsonEncode;

import 'package:http/http.dart' as http;

import '../constent.dart';

class Shops {
  Shops({
    required this.imageUrl,
    required this.name,
    required this.delevery,
  });

  String imageUrl;
  String name;
  String delevery;

  factory Shops.fromJson(Map<String, dynamic> json) => Shops(
      imageUrl: json["imageUrl"],
      name: json["name"],
      delevery: json["delevery"]);

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "name": name,
        "delevery": delevery,
      };

  createcatogery(String name, String imageUrl, String delevery, Cat cat) async {
    await http.post(Uri.parse("$kBaseURL/Shops.json"),
        body: jsonEncode(<String, dynamic>{
          'name': name,
          'imageUrl': imageUrl,
          'delv': delevery,
        }));
  }
}

class Cat {
  Cat({
    required this.sweets,
    required this.braed,
  });

  Cold sweets;
  Cold braed;

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        sweets: Cold.fromJson(json["sweets"]),
        braed: Cold.fromJson(json["braed"]),
      );

  Map<String, dynamic> toJson() => {
        "sweets": sweets.toJson(),
        "braed": braed.toJson(),
      };
}

class Cold {
  Cold({
    required this.items,
  });

  Map<String, Item> items;

  factory Cold.fromJson(Map<String, dynamic> json) => Cold(
        items: Map.from(json["items"])
            .map((k, v) => MapEntry<String, Item>(k, Item.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "items": Map.from(items)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Item {
  Item({
    required this.price,
    required this.img,
    required this.name,
  });

  String price;
  String img;
  String name;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        price: json["Price"],
        img: json["imageUrl"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "Price": price,
        "imageUrl": img,
        "name": name,
      };
}
