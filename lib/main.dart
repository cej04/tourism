import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/EmergencyContact/emergency.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
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
      backgroundColor: Color(0xFF757575),
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {
                
              },
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

      body:
         
          MainPage(),
     

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
            const ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQs'),
              //   onTap: () {
              //  Navigator.pushNamed(context, '/TourismInfoPage');
              // },
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
