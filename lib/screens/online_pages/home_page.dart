import 'package:flutter/material.dart';
import 'package:tradebitcoin/core/base/base_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: HomePage,
      routeName: "/off_home",
      onPageBuilder: (context, widget) {
        return Scaffold(
          appBar: AppBar(
            title: Text("ONLINE PAGE"),
          ),
        );
      },
    );
  }
}
