import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimsBodyPage.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrims_card.dart';

import 'package:ktmtourism/Screens/Headers/header_pilgrims.dart';

import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';



class PilgrimKtmPage extends StatelessWidget {
  
  const PilgrimKtmPage({ Key? key,  }) : super(key: key);

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
            HeaderWithPilgrims(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: pilgrims.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => PilgrimsCard(
              pilgrims: pilgrims[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => PilgrimsBodyPage(
                     pilgrims:pilgrims[index],
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
