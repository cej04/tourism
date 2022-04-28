import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_Historci.dart';

import 'package:ktmtourism/Screens/TouristPlaces/Historic/Destination_screen.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/historic.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/historic_Card.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/destination_model.dart';


class ViewAllHistoric extends StatelessWidget {
  
  const ViewAllHistoric({ Key? key,  }) : super(key: key);

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
            HeaderWithHistoric(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: historic.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => HistoricCard(
              historic: historic[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => DestinationScreen(
                     destination:destinations[index],
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

