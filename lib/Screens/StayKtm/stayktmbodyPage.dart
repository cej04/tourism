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
         appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(title: 'Stay',),
        ),
        body: TabBarView(children: [
          const StateOwnedPage(),
          const CommercialPage(),
        ]),
      ),
    );
  }
}
