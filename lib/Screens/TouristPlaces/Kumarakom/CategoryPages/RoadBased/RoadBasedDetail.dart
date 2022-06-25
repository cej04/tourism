import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/RoadBased/RoadBased.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/RoadBased/RoadBasedCard.dart';
import 'package:ktmtourism/Utils/constants.dart';

class RoadBasedDetail extends StatelessWidget {
  const RoadBasedDetail({
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
            child: Text(
                "Road Based Sightseeing\n Routes In Kumarakom"
                    ,style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
          // HeaderWithRestaurant(size: size),
          Expanded(
              child: ListView.builder(
                  itemCount: roadbased.length,
                  itemBuilder: (context, index) =>
                      RoadBasedCard(roadbased: roadbased[index], press: () {})))
        ],
      ),
    );
  }
}
