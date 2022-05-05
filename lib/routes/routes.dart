import 'package:flutter/material.dart';
import 'package:tradebitcoin/screens/offline_page.dart';
import 'package:tradebitcoin/screens/offline_pages/off_home_page.dart';
import 'package:tradebitcoin/screens/offline_pages/off_tradebitcoin_page.dart';
import 'package:tradebitcoin/screens/online_pages/home_page.dart';
import 'package:tradebitcoin/screens/online_pages/tradebitcoin_page.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/home":
        return MaterialPageRoute(builder: (ctx) => const HomePage());
      case "/trade":
        return MaterialPageRoute(builder: (ctx) => const TradeBitconPage());
      case "/off_home":
        return MaterialPageRoute(builder: (ctx) => const OffHomePage());
      case "/off_trade":
        return MaterialPageRoute(builder: (ctx) => const OffTradeBitcoinPage());
      case "/offline":
        return MaterialPageRoute(builder: (ctx) => OfflinePage());
    }
  }
}
