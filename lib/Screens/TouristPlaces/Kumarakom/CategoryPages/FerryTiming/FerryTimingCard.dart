import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/FerryTiming/FerryTimimg.dart';


class FerryTimingCard extends StatelessWidget {
  final FerryTiming ferrytiming;
  final VoidCallback press;
  const FerryTimingCard(
      {Key? key, required this.ferrytiming, required this.press})
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
              color: ferrytiming.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.alarm,
                  color: ferrytiming.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                // Text(roadbased.name,style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center)
                SizedBox(
                  height: 10,
                ),
                Text(ferrytiming.description,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.justify),
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
