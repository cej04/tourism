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
      appBar:AppBar(   
      title: Text("How to Reach"),     
    automaticallyImplyLeading: false,
    leading: Navigator.canPop(context)
        ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        : null,

          bottom: TabBar(
            isScrollable: true,
            tabs: [
                Tab(
              icon: Icon(Icons.flight),
              text: "By Air",
            ),
              Tab(
              icon: Icon(Icons.train),
              text: "By Train",
            ),
            Tab(icon: Icon(Icons.bus_alert), text: "By Road"),
          
          
            Tab(icon: Icon(Icons.sailing), text: "Backwater Ferry Services"),
          ]),
        ),
        body: TabBarView(children: [
          const AirDetailPage(),
          const TrainDetailPage(),
          const RoadDEtails(),
          
          
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
