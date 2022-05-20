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
        preferredSize: const Size.fromHeight(kToolbarHeight),
       
          child: const MyAppBar(),
        
      ),
      body: Column(
        children: [
          HeaderWithStay(size: size),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                TitleStateOwnedPage(
                  title: "State-Owned",
                  icon: Icons.bed_outlined,
                  press: () {},
                 
                ),
                  StayGovPage(),
          TitleCommercialPage(
            title: "Commercial",
            icon: Icons.star_border_purple500,
            press: () {},
          ),
          StayCommercialPage(),
                ],
    
              ),
            ),
          ),
          // StayTitleWithMoreBtn(title: "State-Owned", icon: Icons.bed_outlined  ,press: (){},),
    
          // StayGovPageHead(title: "gov", icon: Icons.ac_unit),
        
          //StaycommercialTitleWithMoreBtn(title: "State-Owned", icon: Icons.bed_outlined  ,press: (){},),
        ],
      ),
    );
  }
}
