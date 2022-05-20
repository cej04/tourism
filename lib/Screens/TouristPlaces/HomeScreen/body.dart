import 'package:flutter/material.dart';

import 'package:ktmtourism/Screens/Headers/header_touristPlace.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenicPages.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Titles/title_Historic.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Titles/title_Natural.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

import '../Historic/historicPage.dart';
import '../Recreational/recreationalPage.dart';
import '../Religious/religiousPage.dart';
import '../Titles/title_RecreationalPage.dart';
import '../Titles/title_ReligiousPage.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithTouristPlace(
              size: size,
            ),
            const SizedBox(
              height: 20,
            ),
            // HeaderWithSearchBox(size: size),
            const TitleHistoric(
              icon: Icons.history_edu,
              title: "Historic",
             
            ),
            const historicPage(),
            TitleNaturalPage(
                icon: Icons.nature_people_outlined,
                title: "Natural/Scenic Beauty",
                press: () {}),
            const NaturalScenicPages(),
            titleRecreationalPage(
              icon: Icons.rowing_outlined,
              title: "Recreational",
              press: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllRecreation() ));
              },
            ),
            const RecreationalPage(),
            titlereligiousPage(
                icon: Icons.self_improvement_outlined,
                title: "Religious",
                press: () {}),
            const ReligiousPage(),
            const SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    );
  }
}
