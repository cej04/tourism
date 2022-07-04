import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/WaterBased/WaterBased.dart';
import 'package:ktmtourism/Utils/constants.dart';

class WaterBasedDetail extends StatelessWidget {
  const WaterBasedDetail({
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
      body:
       Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Water Based sightseeing\n Routes In Kumarakom",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: waterbased.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = waterbased[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.directions_ferry_rounded,color: que.iconColor,),
                     
                      subtitle: Text(que.description)
                    
                    ),
                  );
                }),
     
          )
        ],
      ),
      //  Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(kDefaultPadding),
      //       child: Text(
      //           "Water Based sightseeing\n Routes In Kumarakom"
      //               ,style: Theme.of(context).textTheme.headline6?.copyWith(
      //           color: Colors.black, fontWeight: FontWeight.bold,)),
      //     ),
      //     // HeaderWithRestaurant(size: size),
      //     Expanded(
      //         child: ListView.builder(
      //             itemCount: waterbased.length,
      //             itemBuilder: (context, index) => WaterBasedCard(
      //                 waterbased: waterbased[index], press: () {})))
      //   ],
      // ),
    );
  }
}
