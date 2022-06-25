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
      appBar: 
      AppBar(
      elevation: 0,
      // backgroundColor: backgroundColor,
      title:  Text(
        "Stay",
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
        //  HeaderWithStay(size: size),
             Container(

                color: Colors.teal,

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
        
          labelColor: Colors.white,
          isScrollable: false,
          indicatorColor: Colors.white,
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
        // SizedBox(
        //   height: 30,
        // ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height/2,
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
