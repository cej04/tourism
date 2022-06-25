import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/ResponsibleTourism/ResponsibleTourism.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/ResponsibleTourism/ResponsibleTourismCard.dart';
import 'package:ktmtourism/Utils/constants.dart';

class ResponsibleTourismDetail extends StatelessWidget {
  const ResponsibleTourismDetail({
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
            child: Text("Responsible Tourism",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
          // HeaderWithRestaurant(size: size),
          Expanded(
              child: ListView.builder(
                  itemCount: responsibletourism.length,
                  itemBuilder: (context, index) => ResponsibleTourismCard(
                      responsibletourism: responsibletourism[index],
                      press: () {})))
        ],
      ),
    );
  }
}
