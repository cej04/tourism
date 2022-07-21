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
          child: GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage())),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/APPlogo2.png",
                  fit: BoxFit.contain,
                 
                )),
          ),
        ),
        PopupMenuButton(
          elevation: 5.0,
          itemBuilder: (context) => [
            PopupMenuItem<int>(
                value: 0,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                )),
            PopupMenuItem<int>(
                value: 1,
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About Kottayam"),
                )),
            PopupMenuItem<int>(
                value: 2,
                child: ListTile(
                  leading: Icon(Icons.food_bank),
                  title: Text("Culinary Delights"),
                )),
            PopupMenuItem<int>(
                value: 3,
                child: ListTile(
                  leading: Icon(Icons.work_rounded),
                  title: Text("Produce"),
                )),
            PopupMenuItem<int>(
                value: 4,
                child: ListTile(
                  leading: Icon(Icons.celebration_rounded),
                  title: Text("Festivals"),
                )),
            PopupMenuItem<int>(
                value: 5,
                child: ListTile(
                  leading: Icon(Icons.art_track),
                  title: Text("Art & Culture"),
                )),
            PopupMenuItem<int>(
                value: 6,
                child: ListTile(
                  leading: Icon(Icons.hotel_class_outlined),
                  title: Text("Restaurants"),
                )),
            PopupMenuItem<int>(
                value: 7,
                child: ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text("Shopping"),
                )),
            PopupMenuItem<int>(
                value: 9,
                child: ListTile(
                  leading: Icon(Icons.travel_explore),
                  title: Text("How to Reach"),
                )),
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
