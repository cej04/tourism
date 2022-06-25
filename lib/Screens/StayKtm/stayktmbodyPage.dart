import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/CommercialPage.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnedPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import '../Headers/header_stay.dart';
import 'Commercial/staycommercialPage.dart';
import 'StateOwned/staygovPage.dart';
import 'Commercial/titlecommercialPage.dart';
import 'StateOwned/titlestateOwnedPage.dart';

class StayKtmBodyPage extends StatelessWidget {
  const StayKtmBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(),
      ),
      body: Column(
        children: [
          HeaderWithStay(size: size),
             Container(

                //color: Colors.teal,

                child: _tabSection(context)),
          // Expanded(
          //   child: Container(
          //     child: ListView(
          //       children: [
          //         TitleStateOwnedPage(
          //           title: "State-Owned",
          //           icon: Icons.bed_outlined,
          //           press: () {},
          //         ),
          //         StayGovPage(),
          //         TitleCommercialPage(
          //           title: "Commercial",
          //           icon: Icons.star_border_purple500,
          //           press: () {},
          //         ),
          //         StayCommercialPage(),
          //       ],
          //     ),
          //   ),
          // ),
          // StayTitleWithMoreBtn(title: "State-Owned", icon: Icons.bed_outlined  ,press: (){},),

          // StayGovPageHead(title: "gov", icon: Icons.ac_unit),

          //StaycommercialTitleWithMoreBtn(title: "State-Owned", icon: Icons.bed_outlined  ,press: (){},),
        ],
      ),
    );
  }
}
Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 2,
    child: Column(
      mainAxisSize: MainAxisSize.min,
    
      children: <Widget>[
        TabBar(
        
          labelColor: Colors.teal,
          isScrollable: true,
          indicatorColor: Colors.teal,
          tabs: [
            Tab(icon: Icon(Icons.bed_outlined), text: "State-Owned"),
            Tab(
              icon: Icon(Icons.star_border_purple500),
              text: "Commercial",
            ),
            // Tab(
            //   icon: Icon(Icons.nature_people_outlined),
            //   text: "Natural/Scenic Beauty",
            // ),
            // Tab(icon: Icon(Icons.rowing_outlined), text: "Recreational"),
            // Tab(icon: Icon(Icons.self_improvement_outlined), text: "Religious"),

            // Tab(
            //   text: "Mundakkayam",
            // ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height /2,
          child: TabBarView(
            children: [
              
            const StateOwnedPage(),
           
            const CommercialPage(),
          //   const ViewAllNatural(),
          //   // const ListViewChanganacherry(),
          //   // const ListViewEttumanoor(),
          //   // const ListViewVaikom(),
          //   const ViewAllRecreation(),
          //  const ViewAllReligious(),
          //   //const ListViewMundakkayam(),
          ]),
        ),
      ],
    ),
  );
}
