import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/Hospital/hospitalDetail.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/Restaurant/RestaurantDetail.dart';
import 'package:ktmtourism/Screens/Shopping/shoppingDetail.dart';
import 'package:ktmtourism/Screens/SideBar.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({Key? key, required this.title}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        title,
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
                    Icons.home,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Home",
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
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
              value: 2,
              child: Row(
                children: [
                  Icon(
                    Icons.food_bank,
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
              value: 3,
              child: Row(
                children: [
                  Icon(
                    Icons.work_rounded,
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
              value: 4,
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
              value: 5,
              child: Row(
                children: [
                  Icon(
                    Icons.art_track,
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
              value: 6,
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
              value: 7,
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
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
              value: 8,
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
            PopupMenuItem<int>(
              value: 9,
              child: Row(
                children: [
                  Icon(
                    Icons.travel_explore,
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
          ],
          onSelected: (item) => SelectedItem(context, item),
        ),
      ],
    );
  }

  @override
  get preferredSize => throw UnimplementedError();
}

void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => welcomektmPage()));
      break;

    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => CulinaryDelightPage()));

      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ProducePage()));

      break;
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => FestivalPage()));

      break;
    case 5:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ArtCulturePage()));

      break;
    case 6:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => RestaurantDetail()));

      break;
    case 7:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ShoppingDetail()));

      break;
    case 8:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HospitalDetail()));

      break;
    case 9:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HowToReachPage()));

      break;
  }
}
