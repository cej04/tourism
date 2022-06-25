import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmBobyPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

//import '../../culinary_bodyPage.dart';

class WelcomeKtmDetailsPage extends StatelessWidget {
  final Welcome welcome;
  const WelcomeKtmDetailsPage({Key? key, required this.welcome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(),
      ),
      body: WelcomeKtmBodyPage(
        welcome: welcome,
      ),
    );
  }
}
