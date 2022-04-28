import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_Recreational.dart';

import 'package:ktmtourism/Screens/TouristPlaces/Recreational/RecreationalDetails.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/recreational.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/recreational_Card.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


class ViewAllRecreation extends StatelessWidget {
  
  const ViewAllRecreation({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
    Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: const MyAppBar(),
      ),
      body: Column(
        children: [
            HeaderWithRecreational(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: recreational.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => RecreationalCard(
              recreational: recreational[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => RecreationalDetails(
                     recreational:recreational[index],
                     ),
                     ),
               ),
            )
            ),
            )
        ],
      ),
    );
  }
}

