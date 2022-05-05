import 'package:hive/hive.dart';

part 'nbu_model.g.dart';

@HiveType(typeId: 0)
class NbuModel {
    NbuModel({
        this.title,
        this.code,
        this.cbPrice,
        this.nbuBuyPrice,
        this.nbuCellPrice,
        this.date,
    });

    @HiveField(0)
    String? code;
    @HiveField(1)
    String? title;
    @HiveField(2)
    String? cbPrice;
    @HiveField(3)
    String? nbuBuyPrice;
    @HiveField(4)
    String? nbuCellPrice;
    @HiveField(5)
    String? date;

    factory NbuModel.fromJson(Map<String, dynamic> json) => NbuModel(
        title: json["title"],
        code: json["code"],
        cbPrice: json["cb_price"],
        nbuBuyPrice: json["nbu_buy_price"],
        nbuCellPrice: json["nbu_cell_price"],
        date: json["date"],
    );
}
