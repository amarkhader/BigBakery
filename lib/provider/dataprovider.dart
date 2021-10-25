import 'dart:convert';
import 'package:bigbakery/constent.dart';
import 'package:bigbakery/models/userModel.dart';
import 'package:bigbakery/provider/dataModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataProviderr with ChangeNotifier {
  List<DataModel> listB = [];
  List<DataModel> listS = [];
  List<Userr> listUsers = [];

  DataProviderr() {
    getBread();
    getSweat();
    getData();
  }

  void getBread() async {
    var response = await http.get(Uri.parse(
        'https://big-bakery-default-rtdb.firebaseio.com/BreadItem.json'));
    var jsonString = json.decode(response.body) as Map<String, dynamic>;

    for (var x in jsonString.keys) {
      listB.add(DataModel.fromJson(jsonString[x]));
    }
    notifyListeners();
  }

  void getSweat() async {
    var response = await http.get(Uri.parse(
        'https://big-bakery-default-rtdb.firebaseio.com/SweetsItem.json'));
    var jsonString = json.decode(response.body) as Map<String, dynamic>;

    for (var x in jsonString.keys) {
      listS.add(DataModel.fromJson(jsonString[x]));
    }
    notifyListeners();
  }

  getData() async {
    var response;
    try {
      var response = await http.get(Uri.parse('$kBaseURL/Users.json'));
      var responseBody = json.decode(response.body) as Map<String, dynamic>;
      for (var item in responseBody.keys) {
        listUsers.add(Userr.fromJson(responseBody[item]));
        notifyListeners();
      }
    } catch (ex) {}
    return response;
  }
}
