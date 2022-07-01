import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/AirDetails.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/RoadDetails.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/TrainDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

class HowToReachPage extends StatelessWidget {
  const HowToReachPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "How To Reach",
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/APPlogo2.png",
                    fit: BoxFit.contain,
                  )),
            ),
            PopupMenuButton(
              elevation: 5.0,
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
          bottom: TabBar(
            isScrollable: true,
            tabs: [
            Tab(icon: Icon(Icons.bus_alert), text: "By Road"),
            Tab(
              icon: Icon(Icons.train),
              text: "By Train",
            ),
            Tab(
              icon: Icon(Icons.flight),
              text: "By Air",
            ),
            Tab(icon: Icon(Icons.sailing), text: "Backwater Ferry Services"),
          ]),
        ),
        body: TabBarView(children: [
          const RoadDEtails(),
          const TrainDetailPage(),
          const AirDetailPage(),
          const FerryServise(),
        ]),
      ),
    );
  }
}

class FerryServise extends StatelessWidget {
  const FerryServise({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Backwater Ferry Services",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          ListTile(
            tileColor: Color(0xFFFFF7EC),
            leading: Icon(Icons.sailing,color:Color.fromARGB(255, 236, 199, 119)),
            title: Text("There are two ferry stations. \n\nThe Town Jetty is about 3 km from the railway station and operates services during the monsoon. \nDuring summer, boats are operated from the Kodimatha Jetty. "),
          
            
            ),
          
        ],
      ),
    );
  }
}
