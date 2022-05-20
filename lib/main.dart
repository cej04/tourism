import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/EmergencyContact/emergency.dart';
import 'package:ktmtourism/Screens/FAQ/FAQPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/MainHome/sampleMain2.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/StayKtm/stayktmbodyPage.dart';
import 'package:ktmtourism/Screens/TourismInfo/tourismInfo.dart';
import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/body.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';
import 'package:ktmtourism/Screens/splashScreen.dart';
import 'Screens/MainHome/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.teal,
    ).copyWith(
      secondary: Colors.teal,
    ),
   // textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
  ),
      debugShowCheckedModeBanner: false,
    //  title: 'Kottayam Tourism',
      initialRoute: '/',
      routes: {
        '/mainPage': (context) => const MainPage(),
        '/welcomektmPage': (context) => const welcomektmPage(),
        //'/Homescreen': (context) => const Homescreen(),
        '/Body': (context) => const Body(),
        '/StayKtmBodyPage': (context) => const StayKtmBodyPage(),
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
        '/MainSample2Page': (context) => const MainSample2Page(),

        // '/HomeScreen': (context) => const HomeScreen(),
      },
      // theme: ThemeData(
      //     appBarTheme: const AppBarTheme(
      //   color: Color(0xFFFFFFFF),
      //   iconTheme: IconThemeData(color: Colors.black),
      // )),
      home:
          //Homescreen()
         //const HomePage(),
        Splash()
    );
  }
}

