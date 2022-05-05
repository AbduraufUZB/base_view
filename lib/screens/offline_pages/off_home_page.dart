import 'package:flutter/material.dart';
import 'package:tradebitcoin/service/nbu_service.dart';
import 'package:tradebitcoin/core/extensions/context_mq_extension.dart';
class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ukam offline pagedasan"),
      ),
      body: ListView.builder(
        itemCount: NbuService.myBox.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25)
            ),
            height: context.mqheight*0.1,
            width: context.mqwidth*0.7,
            child: Center(child: Text(NbuService.myBox.get(index)!.title.toString()),),
          );
        }),
      ),
    );
  }
}
