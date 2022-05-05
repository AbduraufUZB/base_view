import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tradebitcoin/routes/routes.dart';
import 'package:tradebitcoin/service/nbu_service.dart';

void main() async {
  await Hive.initFlutter();
  NbuService.registerAdapter();
  await NbuService.openBox();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.instance.onGenerateRoute,
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
    );
  }
}
