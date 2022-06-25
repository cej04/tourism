import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_touristPlace.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/AirDetails.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/RoadDetail.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/TrainDetail.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/viewAll.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/KumarakomPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenicPages.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/viewAll.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/viewAll.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/viewAll.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Titles/title_Historic.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Titles/title_Kumarakom.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Titles/title_Natural.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import '../Historic/historicPage.dart';
import '../Recreational/recreationalPage.dart';
import '../Religious/religiousPage.dart';
import '../Titles/title_RecreationalPage.dart';
import '../Titles/title_ReligiousPage.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: 
      AppBar(
      elevation: 0,
      // backgroundColor: backgroundColor,
      title:  Text(
        "Tourist Places",
        // style: TextStyle(color: Colors.black),
      ),
      //  Row(
      //   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      //   children: [

      //   ],
      // ),
      actions: [
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
        PopupMenuButton(
          elevation: 5.0,
          // icon: Icon(
          //     Icons.more_vert), //don't specify icon if you want 3 dot menu
          // color: Color(0xFF757575),

          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "About Kottayam",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.explore_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Tourist Places",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 2,
              child: Row(
                children: [
                  Icon(
                    Icons.bed_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Stay in Kottayam",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 3,
              child: Row(
                children: [
                  Icon(
                    Icons.holiday_village,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Main Pilgrim Centers",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 4,
              child: Row(
                children: [
                  Icon(
                    Icons.flatware,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Culinary Delights",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 5,
              child: Row(
                children: [
                  Icon(
                    Icons.color_lens,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Produce",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 6,
              child: Row(
                children: [
                  Icon(
                    Icons.celebration_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Festivals",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 7,
              child: Row(
                children: [
                  Icon(
                    Icons.festival_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Art & Culture",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 8,
              child: Row(
                children: [
                  Icon(
                    Icons.commute_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "How to Reach",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 9,
              child: Row(
                children: [
                  Icon(
                    Icons.hotel_class_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Restaurants",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Shopping",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 11,
              child: Row(
                children: [
                  Icon(
                    Icons.local_hospital_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Hospital",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
          onSelected: (item) => SelectedItem(context, item),
        ),
        //  ChangeThemeButtonWidget(),
      ],
    ),
      // PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),
      //   child: const MyAppBar(),
      // ),
      body: Column(
        children: [
          // HeaderWithTouristPlace(
          //   size: size,
          // ),
          Container(

                color: Colors.teal,

                child: _tabSection(context)),
          // const SizedBox(
          //   height: 20,
          // ),
          // HeaderWithSearchBox(size: size),
          // Expanded(
          //   child: Container(
          //     child: ListView(
          //       children: [
          //         const titleKumarakom(
          //           icon: Icons.water,
          //           title: "Kumarakom",
          //         ),
          //         KumarakomPage(),
          //         const TitleHistoric(
          //           icon: Icons.history_edu,
          //           title: "Historic",
          //         ),
          //         const historicPage(),
          //         TitleNaturalPage(
          //             icon: Icons.nature_people_outlined,
          //             title: "Natural/Scenic Beauty",
          //             press: () {}),
          //         const NaturalScenicPages(),
          //         titleRecreationalPage(
          //           icon: Icons.rowing_outlined,
          //           title: "Recreational",
          //           press: () {
          //             //  Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllRecreation() ));
          //           },
          //         ),
          //         const RecreationalPage(),
          //         titlereligiousPage(
          //             icon: Icons.self_improvement_outlined,
          //             title: "Religious",
          //             press: () {}),
          //         const ReligiousPage(),
          //         const SizedBox(
          //           height: kDefaultPadding,
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          //  child: const TitleHistoric(
          //       icon: Icons.history_edu,
          //       title: "Historic",

          //     ),
          // const historicPage(),
          // TitleNaturalPage(
          //     icon: Icons.nature_people_outlined,
          //     title: "Natural/Scenic Beauty",
          //     press: () {}),
          // const NaturalScenicPages(),
          // titleRecreationalPage(
          //   icon: Icons.rowing_outlined,
          //   title: "Recreational",
          //   press: () {
          //   //  Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllRecreation() ));
          //   },
          // ),
          // const RecreationalPage(),
          // titlereligiousPage(
          //     icon: Icons.self_improvement_outlined,
          //     title: "Religious",
          //     press: () {}),
          // const ReligiousPage(),
          // const SizedBox(
          //   height: kDefaultPadding,
          // )
        ],
      ),
    );
  }
}
Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 5,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
          labelColor: Colors.white,
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.water), text: "Kumarakom"),
            Tab(
              icon: Icon(Icons.history_edu),
              text: "Historic",
            ),
            Tab(
              icon: Icon(Icons.nature_people_outlined),
              text: "Natural/Scenic Beauty",
            ),
            Tab(icon: Icon(Icons.rowing_outlined), text: "Recreational"),
            Tab(icon: Icon(Icons.self_improvement_outlined), text: "Religious"),

            // Tab(
            //   text: "Mundakkayam",
            // ),
          ],
        ),
        // SizedBox(
        //   height: 30,
        // ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height/1.75,
          child: TabBarView(children: [
              
            const KumarakomPage(),
            const ViewAllHistoric(),
            const ViewAllNatural(),
            // const ListViewChanganacherry(),
            // const ListViewEttumanoor(),
            // const ListViewVaikom(),
            const ViewAllRecreation(),
           const ViewAllReligious(),
            //const ListViewMundakkayam(),
          ]),
        ),
      ],
    ),
  );
}
