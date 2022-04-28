import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/StayKtm/stayktmbodyPage.dart';


import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/home_screen.dart';


import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    
    List<String> images = [
      "assets/images/aboutktm.jpeg",
      "assets/images/vembanattu kayal.jpg",
      "assets/images/tajhotel.jpg",
      "assets/images/bhmchurch.jpg",
      "assets/images/sadhya.png",
      "assets/images/woodshaped.jpg",
      "assets/images/onam.jpg",
      "assets/images/koodiyattam.jpg",
      "assets/images/howtobanner.jpg",
    ];
    int selectedIndex = 0;
    int index;
    // List<String> imgcontent = [
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/reachktm.png",

    // ];
    List<String> imgtitles = [
      "About Kottayam",
      "Tourist Places",
      "Stay in Kottayam",
      "Main Pilgrim Centers",
      "Culinary Delights",
      "Produce",
      "Festivals",
      "Art and Culture",
      "How to Reach",
    ];
    List<IconData> imgicons = [
      Icons.info,
      Icons.explore_outlined,
      Icons.bed_rounded,
      Icons.holiday_village,
      Icons.flatware,
      Icons.color_lens,
      Icons.celebration_rounded,
      Icons.festival_outlined,
      Icons.commute_outlined,
    ];
     List pages =[ 
      const welcomektmPage(),
      const Homescreen(),
      const StayKtmBodyPage(),
      const PilgrimKtmPage(),
      const CulinaryDelightPage(),
      const ProducePage(),
      const FestivalPage(),
      const ArtCulturePage(),
      const HowToReachPage(),

    ];
   

    return GestureDetector(
      
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            // SizedBox(
            //   height: 50.0,
            //   child: Text(images[index]),
            // ),
            //      Divider(indent: 2.0,
            //     height: 50.0,
            // thickness:2.0 ,
            // color: Colors.black,
            // ),
            const Padding(
              padding: EdgeInsets.only(top:10.0,bottom: 6),
              child: DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 2.0,
          dashLength: 4.0,
          dashColor: Colors.white,
          //dashGradient: [Colors.red, Colors.blue],
          //dashRadius: 0.0,
          // dashGapLength: 4.0,
          // dashGapColor: Colors.transparent,
          //dashGapGradient: [Colors.red, Colors.blue],
          // dashGapRadius: 0.0,
        ),
            ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, index) {
      //     onTap: () {
      //      Navigator.push(context, MaterialPageRoute(builder: (context) => detailsPage));
      //   // setState(() {
      //   //  selectedIndex = index; 
      //   // });
      // };
          return Column(
            
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 15,bottom: 8),
                child: Row(
                  
                  children: [
                    Icon(imgicons[index],color: Colors.white,),
                    const SizedBox(width: 10,),
                    Text(imgtitles[index],
                        style:
                            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white))
                  ],
                ),
              ),
              GestureDetector(
                
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.fill,
                        
                        //alignment: Alignment.topCenter,
                      ),
                      
                    ),
                    
                  ),
                ),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(
                   builder: (context) => pages[index]
                     ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

