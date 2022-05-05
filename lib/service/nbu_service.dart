import 'package:dio/dio.dart';
import 'package:tradebitcoin/model/nbu_model.dart';

class NbuService {
  static Future<List<NbuModel>> getPosts() async {
    Response res = await Dio().get("https://nbu.uz/en/exchange-rates/json/");
    return (res.data as List).map((e) => NbuModel.fromJson(e)).toList();
  }
}
