import 'dart:convert';
import 'package:flutter/services.dart';
class FoodData {
  static Future getFoodData(String food)async {
     var data = await rootBundle.loadString('assets/data/all_foods.json');
    Map mapData = jsonDecode(data);
    return mapData[food];
  }
}