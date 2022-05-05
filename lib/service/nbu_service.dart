import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tradebitcoin/model/nbu_model.dart';

class NbuService {
   static late Box<NbuModel> myBox;

  static Future<List<NbuModel>> getPosts() async {
    Response res = await Dio().get("https://nbu.uz/en/exchange-rates/json/");

      await putData(
          (res.data as List).map((e) => NbuModel.fromJson(e)).toList());
    return (res.data as List).map((e) => NbuModel.fromJson(e)).toList();
  }

  static putData(List<NbuModel> data) async {
    await myBox.clear();
    for (NbuModel item in data) {
      await myBox.add(item);
    }
  }

  static openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    myBox = await Hive.openBox("myBox");
  }

  static registerAdapter() {
    Hive.registerAdapter(NbuModelAdapter());
  }
}
