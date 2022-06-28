import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/CommercialPage.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnedPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class StayKtmBodyPage extends StatelessWidget {
  const StayKtmBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Stay",
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
                      ),
                    ],
                  ),
                ),
              ],
              onSelected: (item) => SelectedItem(context, item),
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.bed_outlined), text: "State-Owned"),
            Tab(
              icon: Icon(Icons.star_border_purple500),
              text: "Commercial",
            ),
          ],
          indicatorColor: Colors.white,
          indicatorPadding: EdgeInsets.all(2),
          ),
          
        ),
        body: TabBarView(children: [
          const StateOwnedPage(),
          const CommercialPage(),
        ]),
      ),
    );
  }
}
