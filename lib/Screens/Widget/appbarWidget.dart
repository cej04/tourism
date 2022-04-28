// import 'package:flutter/material.dart';
// import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
// import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
// import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
// import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
// import 'package:ktmtourism/Screens/Produce/producePage.dart';
// import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
// import 'package:ktmtourism/Screens/StayKtm/stayktmpage.dart';
// import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/home_screen.dart';
// import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';

// class AppBarWidget extends StatelessWidget {
//   const AppBarWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return new AppBar(
//        title: Row(
//           children: [
//             PopupMenuButton(
//               elevation: 100,
//               icon: Icon(
//                   Icons.more_vert), //don't specify icon if you want 3 dot menu
//               color: Color(0xFF757575),
//               itemBuilder: (context) => [
//                 PopupMenuItem<int>(
//                   value: 0,
//                   child: Row(
//                     children: [
//                       Icon(Icons.info,color: Colors.white,),
//                                               SizedBox(width: 20,),

//                       Text(
//                         "About Kottayam",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 1,
//                   child: Row(
//                     children: [
//                       Icon(Icons.explore_outlined,color: Colors.white,),
//                                               SizedBox(width: 20,),

//                       Text(
//                         "Tourist Places",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 2,
//                   child: Row(
//                     children: [
//                       Icon(Icons.bed_rounded,color: Colors.white,),
//                                               SizedBox(width: 20,),

//                       Text(
//                         "Stay in Kottayam",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 3,
//                   child: Row(
//                     children: [
//                         Icon(Icons.holiday_village,color: Colors.white,),
//                                                 SizedBox(width: 20,),

//                       Text(
//                         "Main Pilgrim Centers",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 4,
//                   child: Row(
//                     children: [
//                       Icon(Icons.flatware,color: Colors.white,),
//                                               SizedBox(width: 20,),

//                       Text(
//                         "Culinary Delights",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 5,
//                   child: Row(
//                     children: [
//                       Icon(Icons.color_lens,color: Colors.white,),
//                                               SizedBox(width: 20,),

//                       Text(
//                         "Produce",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 6,
//                   child: Row(
//                     children: [
//                       Icon(Icons.celebration_rounded,color: Colors.white,),
//                                               SizedBox(width: 20,),

//                       Text(
//                         "Festivals",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 7,
//                   child: Row(
//                     children: [
//                       Icon(Icons.festival_outlined,color: Colors.white,),
//                                               SizedBox(width: 20,),

//                       Text(
//                         "Art & Culture",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//                 PopupMenuItem<int>(
//                   value: 8,
//                   child: Row(
//                     children: [
//                         Icon(Icons.commute_outlined,color: Colors.white,),
//                         SizedBox(width: 20,),
//                       Text(
//                         "How to Reach",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//               onSelected: (item) => SelectedItem(context, item),
//             ),
//             const Text(
//               "Kottayam Tourism",
//               style: TextStyle(color: Colors.black),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Image.asset(
//                     "assets/images/APPlogo2.png",
//                     fit: BoxFit.contain,
//                     // width: 70.0,
//                     // height: 70.0,
//                   )),
//             ),
//           ],
//         ),
//         actions: [],
      
//     );
//   }
// }
// void SelectedItem(BuildContext context, item) {
//     switch (item) {
//       case 0:
//         Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => welcomektmPage()));
//         break;
//       case 1:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => Homescreen()));
        
//         break;
//          case 2:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => StayKtmPage()));
        
//         break;
//          case 3:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => PilgrimKtmPage()));
        
//         break;
//         case 4:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => CulinaryDelightPage()));
        
//         break;
//          case 5:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => ProducePage()));
        
//         break;
//         case 6:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => FestivalPage()));
        
//         break;
//         case 7:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => ArtCulturePage()));
        
//         break;
//           case 8:
//        Navigator.of(context)
//             .push(MaterialPageRoute(builder: (context) => HowToReachPage()));
        
//         break;
     
//     }
//   }

import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/StayKtm/stayktmbodyPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/home_screen.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final String title;
  // final Color backgroundColor;
  const MyAppBar({
    Key? key,
    // required this.title,
    // required this.backgroundColor
  }) : super(key: key);
@override
//Size  get PreferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
     // backgroundColor: backgroundColor,
      title: Row(
        children: [
          PopupMenuButton(
             
            elevation: 0,
            // icon: Icon(
            //     Icons.more_vert), //don't specify icon if you want 3 dot menu
            color: Color(0xFF757575),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Row(
                  children: [
                    Icon(Icons.info,color: Colors.white,),
                                            SizedBox(width: 20,),

                    Text(
                      "About Kottayam",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.explore_outlined,color: Colors.white,),
                                            SizedBox(width: 20,),

                    Text(
                      "Tourist Places",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.bed_rounded,color: Colors.white,),
                                            SizedBox(width: 20,),

                    Text(
                      "Stay in Kottayam",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 3,
                child: Row(
                  children: [
                      Icon(Icons.holiday_village,color: Colors.white,),
                                              SizedBox(width: 20,),

                    Text(
                      "Main Pilgrim Centers",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 4,
                child: Row(
                  children: [
                    Icon(Icons.flatware,color: Colors.white,),
                                            SizedBox(width: 20,),

                    Text(
                      "Culinary Delights",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 5,
                child: Row(
                  children: [
                    Icon(Icons.color_lens,color: Colors.white,),
                                            SizedBox(width: 20,),

                    Text(
                      "Produce",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 6,
                child: Row(
                  children: [
                    Icon(Icons.celebration_rounded,color: Colors.white,),
                                            SizedBox(width: 20,),

                    Text(
                      "Festivals",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 7,
                child: Row(
                  children: [
                    Icon(Icons.festival_outlined,color: Colors.white,),
                                            SizedBox(width: 20,),

                    Text(
                      "Art & Culture",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 8,
                child: Row(
                  children: [
                      Icon(Icons.commute_outlined,color: Colors.white,),
                      SizedBox(width: 20,),
                    Text(
                      "How to Reach",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
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
            .push(MaterialPageRoute(builder: (context) => StayKtmBodyPage()));
        
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

