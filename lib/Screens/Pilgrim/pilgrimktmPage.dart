import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrim_detail.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrims_card.dart';

import 'package:ktmtourism/Screens/Headers/header_pilgrims.dart';

import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/StayKtm/stayktmpage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/home_screen.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';



class PilgrimKtmPage extends StatelessWidget {
  
  const PilgrimKtmPage({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
    Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            PopupMenuButton(
              elevation: 100,
              icon: Icon(
                  Icons.more_vert), //don't specify icon if you want 3 dot menu
              color: Color(0xFF757575),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About Kottayam",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Tourist Places",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Stay in Kottayam",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text(
                    "Main Pilgrim Centers",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 4,
                  child: Text(
                    "Culinary Delights",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 5,
                  child: Text(
                    "Produce",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 6,
                  child: Text(
                    "Festivals",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 7,
                  child: Text(
                    "Art & Culture",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 8,
                  child: Text(
                    "How to Reach",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (item) => SelectedItem(context, item),
            ),
            const Text(
              "Kottayam Tourism",
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/APPlogo2.png",
                    fit: BoxFit.contain,
                    // width: 70.0,
                    // height: 70.0,
                  )),
            ),
          ],
        ),
        actions: [],
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
                   builder: (context) => PilgrimDetailPage(
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
void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => welcomektmPage()));
        break;
      case 1:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Homescreen()));
        
        break;
         case 2:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => StayKtmPage()));
        
        break;
         case 3:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PilgrimKtmPage()));
        
        break;
        case 4:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CulinaryDelightPage()));
        
        break;
         case 5:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProducePage()));
        
        break;
        case 6:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FestivalPage()));
        
        break;
        case 7:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ArtCulturePage()));
        
        break;
          case 8:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HowToReachPage()));
        
        break;
     
    }
  }


