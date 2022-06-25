import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_shopping.dart';
import 'package:ktmtourism/Screens/Shopping/shopping.dart';
import 'package:ktmtourism/Screens/Shopping/shoppingCard.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class ShoppingDetail extends StatelessWidget {
  const ShoppingDetail({
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
          HeaderWithShopping(size: size),
          Expanded(
              child: ListView.builder(
                  itemCount: shopping.length,
                  itemBuilder: (context, index) =>
                      ShoppingCard(shopping: shopping[index], press: () {}
                          //  => Navigator.push(
                          //    context, MaterialPageRoute(
                          //      builder: (context) => PilgrimsBodyPage(
                          //        pilgrims:pilgrims[index],
                          //        ),
                          //        ),
                          //  ),
                          ))),

          // GridView.builder(
          //    padding: const EdgeInsets.all(20),
          //   itemCount: shopping.length,
          //   gridDelegate:
          //   SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 1,
          //   // mainAxisSpacing: kDefaultPadding,
          //   // crossAxisSpacing: 10,
          //   //   mainAxisSpacing: 10,
          //   childAspectRatio: 2/1.5,
          //   ),

          // itemBuilder: (context,index) => ShoppingCard(
          //   shopping: shopping[index],
          //    press: () {}
          //   //  => Navigator.push(
          //   //    context, MaterialPageRoute(
          //   //      builder: (context) => PilgrimsBodyPage(
          //   //        pilgrims:pilgrims[index],
          //   //        ),
          //   //        ),
          //   //  ),
          // )
          // ),
        ],
      ),
    );
  }
}
