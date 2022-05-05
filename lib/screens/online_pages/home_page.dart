import 'package:flutter/material.dart';
import 'package:tradebitcoin/core/base/base_view.dart';
import 'package:tradebitcoin/model/nbu_model.dart';
import 'package:tradebitcoin/service/nbu_service.dart';
import 'package:tradebitcoin/core/extensions/context_mq_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: HomePage,
      routeName: "/off_home",
      onPageBuilder: (context, widget) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Name ........ ", style: TextStyle(fontSize: 30),),
                        const Text("WELCOME BACK 🤗"),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: FutureBuilder(
                    future: NbuService.getPosts(),
                    builder:
                        ((context, AsyncSnapshot<List<NbuModel>> snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                            child: CircularProgressIndicator.adaptive());
                      } else {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (ctx, i) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(25)
                              ),
                              margin: const EdgeInsets.all(10),
                              height: context.mqheight * 0.1,
                              width: context.mqwidth * 0.7,
                              child: Text(snapshot.data![i].title.toString()),
                            );
                          },
                        );
                      }
                    }),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
