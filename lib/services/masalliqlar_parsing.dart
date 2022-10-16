import 'dart:convert';

import 'package:flutter/services.dart';

class Masalliqlar {
  static getImageUrl() async {
    var data = await rootBundle.loadString('assets/data/masalliqlar_image.json');
    Map mapData = jsonDecode(data);
    return mapData;
  }
  static getName () async {
    var data = await rootBundle.loadString('assets/data/masalliqlar_name.json');
    Map mapData = jsonDecode(data);
    return mapData;
  }
}
