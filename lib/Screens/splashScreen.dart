// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/SideBar.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomePage(),
      duration: 3000,
      imageSize: 710,
      imageSrc: "assets/images/flash1.jpg",
    

      backgroundColor: Colors.white,
    );

   
  }
}
