import 'package:flutter/material.dart';
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
        preferredSize: const Size.fromHeight(80.0),
       
          child: const MyAppBar(),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithStay(size: size),
            TitleStateOwnedPage(
              title: "State-Owned",
              icon: Icons.bed_outlined,
              press: () {},
             
            ),
            // StayTitleWithMoreBtn(title: "State-Owned", icon: Icons.bed_outlined  ,press: (){},),
    
            // StayGovPageHead(title: "gov", icon: Icons.ac_unit),
            StayGovPage(),
            TitleCommercialPage(
              title: "Commercial",
              icon: Icons.star_border_purple500,
              press: () {},
            ),
            StayCommercialPage(),
            //StaycommercialTitleWithMoreBtn(title: "State-Owned", icon: Icons.bed_outlined  ,press: (){},),
          ],
        ),
      ),
    );
  }
}
