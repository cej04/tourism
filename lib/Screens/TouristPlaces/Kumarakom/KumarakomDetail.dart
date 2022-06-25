import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/About/KumarakomDetail.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/AccessingKottayam/AccessingDetail.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/RoadBased/RoadBasedDetail.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/Spotlight/SpotlightDetail.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/WaterBased/WaterBasedDetail.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/FerryTiming/FerryTimingDetail.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/About/Kumarakom.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'CategoryPages/BoatRaces/BoatRaceDetail.dart';
import 'CategoryPages/ResponsibleTourism/ResponsibleTourismDetail.dart';

class KumarakomDetail extends StatefulWidget {
  final Kumarakom kumarakom;

  const KumarakomDetail({Key? key, required this.kumarakom}) : super(key: key);

  @override
  State<KumarakomDetail> createState() => _KumarakomDetailState();
}

class _KumarakomDetailState extends State<KumarakomDetail> {
  var selected = 0;

  late Function callback;
  var tabindex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MyAppBar(),
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
            Tab(icon: Icon(Icons.info), text: "About Kumarakom "),

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
          ],
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
             KumarakomDetails(),
            const AccessingDetail(),
            const SpotlightDetail(),
            const BoatRaceDetail(),
            const ResponsibleTourismDetail(),
            const WaterBasedDetail(),
            const RoadBasedDetail(),
            const FerryTimingDetail(),
          ]),
        ),
      ],
    ),
  );
}
