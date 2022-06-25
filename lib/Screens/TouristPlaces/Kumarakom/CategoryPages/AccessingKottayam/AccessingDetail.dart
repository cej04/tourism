import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/AccessingKottayam/AccessingCard.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/AccessingKottayam/AccessingKottayam.dart';
import 'package:ktmtourism/Utils/constants.dart';

class AccessingDetail extends StatelessWidget {
  const AccessingDetail({
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
            child: Text("Accessing Kumarakom",style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold,),),
          ),
          // HeaderWithRestaurant(size: size),
          Expanded(
              child: ListView.builder(
                  itemCount: accessingKottayam.length,
                  itemBuilder: (context, index) => AccessingCard(
                      accessingKottayam: accessingKottayam[index],
                      press: () {})))
        ],
      ),
    );
  }
}
