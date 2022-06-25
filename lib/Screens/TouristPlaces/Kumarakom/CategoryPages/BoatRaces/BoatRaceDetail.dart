import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/BoatRaces/BoatRaceCard.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/BoatRaces/BoatRaces.dart';
import 'package:ktmtourism/Utils/constants.dart';

class BoatRaceDetail extends StatelessWidget {
  const BoatRaceDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //  appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),

      //     child: const MyAppBar(),

      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Boat Races In Kumarakom",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
          // HeaderWithRestaurant(size: size),
          Expanded(
              child: ListView.builder(
                  itemCount: boatraces.length,
                  itemBuilder: (context, index) =>
                      BoatRaceCard(boatraces: boatraces[index], press: () {})))
        ],
      ),
    );
  }
}
