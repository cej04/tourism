import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/BoatRaces/BoatRaces.dart';

class BoatRaceCard extends StatelessWidget {
  final BoatRaces boatraces;
  final VoidCallback press;
  const BoatRaceCard({Key? key, required this.boatraces, required this.press})
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
              color: boatraces.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.rowing,
                  color: boatraces.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(boatraces.name,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Text(boatraces.description,
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
