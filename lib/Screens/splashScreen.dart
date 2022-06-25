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
      imageSrc: "assets/images/flash1.png",
      // text: "Kottayam Tourism",
      // textType: TextType.TyperAnimatedText,
      // textStyle: Theme.of(context).textTheme.headline5,

      backgroundColor: Colors.white,
    );

    //   (
    //     seconds: 14,
    // navigateAfterSeconds: new HomePage(),
    // title: new Text('Welcome In SplashScreen'),
    // image: new Image.asset("assets/images/APPlogo3.png"),
    // backgroundColor: Colors.white,
    // styleTextUnderTheLoader: new TextStyle(),
    // photoSize: 100.0,
    // loaderColor: Colors.red

    //   );
  }
}
