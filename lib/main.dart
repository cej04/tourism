import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/EmergencyContact/emergency.dart';
import 'package:ktmtourism/Screens/FAQ/FAQPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/Fire&Rescue/FRdetail.dart';
import 'package:ktmtourism/Screens/GovHos/GovHosDetail.dart';
import 'package:ktmtourism/Screens/MainHome/sampleMain2.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Police/PoliceDetail.dart';
import 'package:ktmtourism/Screens/PrivateHospitals/PrivateDetail.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/TourismInfo/tourismInfo.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';
import 'package:ktmtourism/Screens/splashScreen.dart';

import 'Screens/RestHouse/StateOwnedPage.dart';


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
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
        //  '/mainPage': (context) => const MainPage(),
          '/welcomektmPage': (context) => const welcomektmPage(),
          '/StateOwnedPage': (context) => const StateOwnedPage(),
          '/PilgrimKtmPage': (context) => const PilgrimKtmPage(),
          '/CulinaryDelightPage': (context) => const CulinaryDelightPage(),
          '/ProducePage': (context) => const ProducePage(),
          '/FestivalPage': (context) => const FestivalPage(),
          '/ArtCulturePage': (context) => const ArtCulturePage(),
          '/HowToReachPage': (context) => const HowToReachPage(),
          '/TourismInfoPage': (context) => const TourismInfoPage(),
          '/EmergencyPage': (context) => const EmergencyPage(),
          '/PoliceDetail': (context) => const PoliceDetail(),
          
          '/FRdetail': (context) => const FRdetail(),
          '/GovDetail': (context) => const GovDetail(),
          
          '/PrivateDetail': (context) => const PrivateDetail(),
          
          '/FAQPage': (context) => const FAQPage(),
          '/MainSample2Page': (context) => const MainSample2Page(),
        },
        home: SplashPage());
  }
}
