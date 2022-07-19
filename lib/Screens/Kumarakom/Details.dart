
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/AccessingKumarakom/AccessingKumarakom.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/BoatRaces/BoatRaceDetail.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/FerryTiming/FerryTimingDetail.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/MotorBoat/MotorBoatDetail.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/ResponsibleTourism/ResponsibleTourismDetail.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/RoadBased/RoadBasedDetail.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/Spotlight/SpotlightDetail.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/WaterBased/WaterBasedDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
class details extends StatefulWidget {
  

  const details({Key? key,}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  var selected = 0;

  late Function callback;
  var tabindex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MyAppBar(title: 'Kumarakom',),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(color: Colors.teal, child: _tabSection(context)),
            ],
          ),
        ));
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 8,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: [
           // Tab(icon: Icon(Icons.info), text: "About Kumarakom "),
            Tab(icon: Icon(Icons.alt_route), text: "Accessing Kumarakom "),
            Tab(
              icon: Icon(Icons.attractions_rounded),
              text: "Spotlights",
            ),
            Tab(icon: Icon(Icons.rowing), text: "Boat Races"),
            Tab(
              icon: Icon(Icons.currency_rupee_outlined),
              text: "Responsible Tourism",
            ),
            Tab(
              icon: Icon(Icons.directions_ferry_rounded),
              text: "Water Based  Routes",
            ),
            Tab(
              icon: Icon(Icons.emoji_transportation_outlined),
              text: "Road Based  Routes ",
            ),
            Tab(
              icon: Icon(Icons.alarm),
              text: "Ferry Timing ",
            ),
             Tab(
              icon: Icon(Icons.sailing_sharp),
              text: "Motor Boat Operators",
            ),
          ],
        ),
        Container(
  
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
          //  KumarakomDetails(),
            const AccessingKumarakomPage(),
            const SpotlightDetail(),
            const BoatRaceDetail(),
            const ResponsibleTourismDetail(),
            const WaterBasedDetail(),
            const RoadBasedDetail(),
            const FerryTimingDetail(),
            MotorBoatDetail()
          ]),
        ),
      ],
    ),
  );
}
