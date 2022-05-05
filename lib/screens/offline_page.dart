import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tradebitcoin/core/extensions/context_mq_extension.dart';
class OfflinePage extends StatelessWidget {
  String routeName;
  OfflinePage({Key? key, this.routeName = "/offline"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Lottie.asset("assets/lottie/page_not_found.json"),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "NO INTERNET!!!",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: context.mqheight*0.05),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routeName);
                  },
                  child: const Text("GO TO OFFLINE PAGE"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
