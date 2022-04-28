import 'package:flutter/material.dart';

import 'package:ktmtourism/Screens/Headers/header_religious.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/religious.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/religiousDetails.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/religious_Card.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


class ViewAllReligious extends StatelessWidget {
  
  const ViewAllReligious({ Key? key,  }) : super(key: key);

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
            HeaderWithReligious(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: religious.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index)  => ReligiousCard(
              religious: religious[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => ReligiousDetails(
                     religious:religious[index],
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

