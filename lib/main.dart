import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/EmergencyContact/emergency.dart';
import 'package:ktmtourism/Screens/FAQ/FAQPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/MainHome/samplemain.dart';
import 'package:ktmtourism/Screens/MainHome/samplemainimages.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';

import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/home_screen.dart';

import 'package:ktmtourism/Screens/TourismInfo/tourismInfo.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';

import 'Screens/MainHome/mainPage.dart';

import 'Screens/StayKtm/stayktmpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kottayam Tourism',
      initialRoute: '/',
      routes: {
        '/mainPage': (context) => const MainPage(),
        '/welcomektmPage': (context) => const welcomektmPage(),
        '/Homescreen': (context) => const Homescreen(),
        '/Body': (context) => const Homescreen(),
        '/StayKtmPage': (context) => const StayKtmPage(),
        '/PilgrimKtmPage': (context) => const PilgrimKtmPage(),

// '/AboutKtmPage': (context) => const AboutKtmPage(),
        '/CulinaryDelightPage': (context) => const CulinaryDelightPage(),
        '/ProducePage': (context) => const ProducePage(),
        '/FestivalPage': (context) => const FestivalPage(),

        '/ArtCulturePage': (context) => const ArtCulturePage(),
        '/HowToReachPage': (context) => const HowToReachPage(),
// '/ReachKtm': (context) => const ReachKtm(),
        '/TourismInfoPage': (context) => const TourismInfoPage(),
        '/EmergencyPage': (context) => const EmergencyPage(),
        '/FAQPage': (context) => const FAQPage(),

        // '/HomeScreen': (context) => const HomeScreen(),
      },
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Colors.black),
      )),
      home:
          //Homescreen()
          const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   backgroundColor: Color(0xFF757575),
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            PopupMenuButton(
              icon: Icon(
                  Icons.more_vert), //don't specify icon if you want 3 dot menu
              color: Color(0xFF757575),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About Kottayam",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Tourist Places",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Stay in Kottayam",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text(
                    "Main Pilgrim Centers",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 4,
                  child: Text(
                    "Culinary Delights",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 5,
                  child: Text(
                    "Produce",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 6,
                  child: Text(
                    "Festivals",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 7,
                  child: Text(
                    "Art & Culture",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 8,
                  child: Text(
                    "How to Reach",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (item) => SelectedItem(context, item),
            ),
            const Text(
              "Kottayam Tourism",
              style: TextStyle(color: Colors.black),
            ),
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
          ],
        ),
        actions: [],
      ),

      body:MainHomeSample(),
      
      //SampleMain(),
      
      // MainPage(),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/APPlogo2.png"),
                      fit: BoxFit.contain)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text('Emergency Contacts'),
              onTap: () {
                Navigator.pushNamed(context, '/EmergencyPage');
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: Text('Tourism Information'),
              onTap: () {
                Navigator.pushNamed(context, '/TourismInfoPage');
              },
            ),
            const Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQs'),
              onTap: () {
                Navigator.pushNamed(context, '/FAQPage');
              },
            ),
            // ListTile(
            //   leading: const Icon(Icons.info),
            //   title: Text('Sample Nav'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/HomeScreen');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

 void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => welcomektmPage()));
        break;
      case 1:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Homescreen()));
        
        break;
         case 2:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => StayKtmPage()));
        
        break;
         case 3:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PilgrimKtmPage()));
        
        break;
        case 4:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CulinaryDelightPage()));
        
        break;
         case 5:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProducePage()));
        
        break;
        case 6:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FestivalPage()));
        
        break;
        case 7:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ArtCulturePage()));
        
        break;
          case 8:
       Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HowToReachPage()));
        
        break;
     
    }
  }
