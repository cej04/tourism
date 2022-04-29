import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_howToReach.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reach.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachBodyPage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachCard.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
//import 'package:ktmtourism/header_how_to_reach.dart';



class HowToReachPage extends StatelessWidget {
  
  const HowToReachPage({ Key? key,  }) : super(key: key);

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
          HeaderWithHowToReach(size: size),
            //HeaderWithHowToReach(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: howtoreach.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => HowToReachCard(
              howtoreach: howtoreach[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => HowToReachBodyPage(
                     howtoreach:howtoreach[index],
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

