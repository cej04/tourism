import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/viewAll.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/KumarakomPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/viewAll.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/viewAll.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/viewAll.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
   appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(title: 'Tourist Places',),
        ),
        body: TabBarView(
          children: [
            const KumarakomPage(),
            const ViewAllHistoric(),
            const ViewAllNatural(),
            const ViewAllRecreation(),
            const ViewAllReligious(),
          ],
        ),
      ),
    );
  }
}
