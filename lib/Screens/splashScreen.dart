// ignore_for_file: import_of_legacy_library_into_null_safe
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/SideBar.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          HomePage()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/flashs4.jpg'),
          fit: BoxFit.fill,
        ),
      ),
     // FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}

// class Splash extends StatefulWidget {
//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   Widget build(BuildContext context) {
//     return 
//     SplashScreenView(
//       navigateRoute: HomePage(),
//       duration: 3000,
//       imageSize: 710,
//       imageSrc: "assets/images/flashs3.jpg",
    

//       backgroundColor: Colors.white,
//     );

   
//   }
// }
