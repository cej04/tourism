import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Restaurant/Restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final VoidCallback press;
  const RestaurantCard(
      {Key? key, required this.restaurant, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          //  height: MediaQuery.of(context).size.height/4,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: restaurant.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.hotel_class_outlined,
                  color: restaurant.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(restaurant.name,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Text(restaurant.description,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(restaurant.phone.toString(),
                        textAlign: TextAlign.center)
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
