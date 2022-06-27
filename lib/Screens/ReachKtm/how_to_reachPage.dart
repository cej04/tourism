import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_howToReach.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/AirDetails.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/RoadDetail.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/TrainDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

//import 'package:ktmtourism/header_how_to_reach.dart';

class HowToReachPage extends StatelessWidget {
  const HowToReachPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: 
        AppBar(
        elevation: 0,
        // backgroundColor: backgroundColor,
        title:  Text(
          "How To Reach",
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
        bottom: TabBar(tabs: [
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
              const RoadDetailPage(),
              const TrainDetailPage(),
              const AirDetailPage(),
           
              const FerryServise(),
    
            ]),
      ),
    );
  }
}



class FerryServise extends StatelessWidget {
  const FerryServise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: MediaQuery.of(context).size.height/1,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color(0xFFFFF7EC), borderRadius: BorderRadius.circular(20)),
    
          child: Column(
       
            children: [
              Icon(
                Icons.sailing,
                color: Color.fromARGB(255, 236, 199, 119),
                size: 35,
              ),
              SizedBox(
                height: 10,
              ),
        
              Text(
                "There are two ferry stations.\n\nThe Town Jetty is about 3 km from the railway station and operates services during the monsoon.\n\nDuring summer,boats are operated from the Kodimatha Jetty."
                    .toString(),
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
         
        ),
      ),
    );

  }
}
