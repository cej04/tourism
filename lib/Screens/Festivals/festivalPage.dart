import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Festivals/festival_Card.dart';
import 'package:ktmtourism/Screens/Festivals/festivals.dart';
import 'package:ktmtourism/Screens/Festivals/festivalsBodyPage.dart';

import 'package:ktmtourism/Screens/Headers/header_festival.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


class FestivalPage extends StatelessWidget {
  
  const FestivalPage({ Key? key,  }) : super(key: key);

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
            HeaderWithFestival(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: festivals.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => FestivalCard(
              festivals: festivals[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => FestivalsBodyPage(
                     festivals:festivals[index],
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

