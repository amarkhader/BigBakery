import 'dart:convert';
import 'package:bigbakery/constent.dart';
import 'package:bigbakery/models/category.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CategoresProviders with ChangeNotifier {
  bool isinitiated = false;
  List<Categori> categores = [];

  Future<dynamic> getCategores() async {
    var res = await http.get(Uri.parse('$kBaseURL/Shops.json'));
    var jasontoString = json.decode(res.body);
    for (var x in jasontoString) {
      categores.add(Categori.fromjson(x));
      notifyListeners();
    }
  }
}
