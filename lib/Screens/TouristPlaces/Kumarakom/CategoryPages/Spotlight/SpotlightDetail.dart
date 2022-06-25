import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/Spotlight/Spotlight.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/Spotlight/SpotlightCard.dart';
import 'package:ktmtourism/Utils/constants.dart';

class SpotlightDetail extends StatelessWidget {
  const SpotlightDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //  appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),

      //    child: const MyAppBar(),

      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Spotlights Near Kumarakom",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
          // HeaderWithRestaurant(size: size),
          Expanded(
              child: ListView.builder(
                  itemCount: spotlight.length,
                  itemBuilder: (context, index) =>
                      SpotlightCard(spotlight: spotlight[index], press: () {})))
        ],
      ),
    );
  }
}
