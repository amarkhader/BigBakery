import 'package:bigbakery/constent.dart';
import 'package:bigbakery/models/json_post_Model.dart';
import 'package:bigbakery/models/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataProvider with ChangeNotifier {
  List<Shops> listShops = [];
  List<Cat> listCategori = [];
  List<Userr> listUsers = [];
  List<Item> listbred = [];
  List<Item> listSweat = [];
  DataProvider() {
    getBItems();
    getSItems();
    getData();
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

  getShops() async {
    try {
      var response = await http.get(Uri.parse('$kBaseURL/Shops.json'));
      var responseBody = json.decode(response.body) as Map<String, dynamic>;
      for (var item in responseBody.keys) {
        listShops.add(Shops.fromJson(responseBody[item]));
        notifyListeners();
      }
    } catch (ex) {}
  }

  void getBItems() async {
    try {
      var response = await http.get(Uri.parse('$kBaseURL/BreadItem.json'));
      var responseBody = json.decode(response.body) as Map<String, dynamic>;
      for (var item in responseBody.keys) {
        listbred.add(Item.fromJson(responseBody[item]));
        notifyListeners();
      }
    } catch (ex) {}
  }

  getSItems() async {
    var response;
    try {
      var response = await http.get(Uri.parse('$kBaseURL/SweatItem.json'));
      var responseBody = json.decode(response.body) as Map<String, dynamic>;
      for (var item in responseBody.keys) {
        listSweat.add(Item.fromJson(responseBody[item]));
        notifyListeners();
      }
    } catch (ex) {}
    return response;
  }
}
