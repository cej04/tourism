import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/FAQ/FAQ.dart';
import 'package:ktmtourism/Screens/Headers/header_FAQ.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(),
      ),
      body: Column(
        children: [
          HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: faq.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = faq[index];

                  return Card(
                      child: ListTile(
                    leading: Icon(Icons.question_answer),
                    title: Text(que.question),
                    subtitle: Text(que.answer),
                  ));
                }),
            // GridView.builder(
            //    padding: const EdgeInsets.all(20),
            //   itemCount: pilgrims.length,
            //   gridDelegate:
            //   SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //   crossAxisSpacing: 10,
            //     mainAxisSpacing: 10,
            //   ),

            // itemBuilder: (context,index) => PilgrimsCard(
            //   pilgrims: pilgrims[index],
            //    press: () => Navigator.push(
            //      context, MaterialPageRoute(
            //        builder: (context) => PilgrimDetailPage(
            //          pilgrims:pilgrims[index],
            //          ),
            //          ),
            //    ),
            // )
            // ),
          )
        ],
      ),
    );
  }
}
