import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/AccessingKottayam/AccessingKottayam.dart';

class AccessingCard extends StatelessWidget {
  final AccessingKottayam accessingKottayam;
  final VoidCallback press;
  const AccessingCard(
      {Key? key, required this.accessingKottayam, required this.press})
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
              color: accessingKottayam.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.alt_route,
                  color: accessingKottayam.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(accessingKottayam.title,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center),

                // Text(roadbased.name,style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center)
                //SizedBox(height: 10,),

                // Text(accessingKottayam.description,style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.justify),
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
