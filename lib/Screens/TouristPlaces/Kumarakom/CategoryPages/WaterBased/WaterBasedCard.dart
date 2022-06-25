import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/WaterBased/WaterBased.dart';

class WaterBasedCard extends StatelessWidget {
  final WaterBased waterbased;
  final VoidCallback press;
  const WaterBasedCard(
      {Key? key, required this.waterbased, required this.press})
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
              color: waterbased.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.directions_ferry_rounded,
                  color: waterbased.iconColor,
                  size: 35,
                ),
                //  SizedBox(height: 10,),
                //  Text(waterbased.name,style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center)
                SizedBox(
                  height: 10,
                ),
                Text(waterbased.description,
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
