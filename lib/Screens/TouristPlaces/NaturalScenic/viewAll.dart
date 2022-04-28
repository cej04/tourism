import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_NaturalScenic.dart';

import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenic.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenicDetail.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenic_Card.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


class ViewAllNatural extends StatelessWidget {
  
  const ViewAllNatural({ Key? key,  }) : super(key: key);

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
            HeaderWithNaturalScenic(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: naturalscenic.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index)  => NaturalScenicCard(
              naturalScenic: naturalscenic[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => NaturalScenicDetail(
                     naturalscenic:naturalscenic[index],
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

