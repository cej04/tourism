import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Shopping/shopping.dart';

class ShoppingCard extends StatelessWidget {
  final Shopping shopping;
  final VoidCallback press;
  const ShoppingCard({Key? key, required this.shopping, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          //height: MediaQuery.of(context).size.height/4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: shopping.bgcolor, borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: shopping.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(shopping.name,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Text(shopping.description,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(shopping.phone.toString(), textAlign: TextAlign.center)
                  ],
                )
              ],
            ),
          ),
          //     height: MediaQuery.of(context).size.height/18,
          //    child:

          // Image.asset(restaurant.image,)
        ),
      ),
    );
  }
}
