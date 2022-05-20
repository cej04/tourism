import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/MainHome/main.dart';
import 'package:ktmtourism/Screens/MainHome/maincard.dart';

import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/StayKtm/stayktmbodyPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/body.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class MainSample2Page extends StatefulWidget {
  const MainSample2Page({
    Key? key,
  }) : super(key: key);

  @override
  State<MainSample2Page> createState() => _MainSample2PageState();
}

class _MainSample2PageState extends State<MainSample2Page> {
  @override
  Widget build(BuildContext context) {
    List pages = [
      const welcomektmPage(),
      const Body(),
      const StayKtmBodyPage(),
      const PilgrimKtmPage(),
      const CulinaryDelightPage(),
      const ProducePage(),
      const FestivalPage(),
      const ArtCulturePage(),
      const HowToReachPage(),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    //  backgroundColor: Colors.grey,
      //  appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(60.0),

      //     child: const MyAppBar(),

      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //  HeaderWithHowToReach(size: size),
            Container(
              
              // color: Colors.grey[350],
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: CarouselSlider(
                items: [
                  //1st Image of Slider
                 
      
                  //2nd Image of Slider
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/kumarakom.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, // This aligns the child of the container
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom: 15), //some spacing to the child from bottom
                          child: Text("Kumarakom".toUpperCase(),
                               style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor: Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1))
                                      )),
      
                                       Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/vagamon.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, // This aligns the child of the container
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom: 15), //some spacing to the child from bottom
                          child: Text("vagamon".toUpperCase(),
                               style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor: Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1))
                                      )),
      
                  //3rd Image of Slider
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bhmchurch.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, // This aligns the child of the container
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom: 15), //some spacing to the child from bottom
                          child: Text("Bharananganam Church".toUpperCase(),
                              style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor: Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1))
                                      )),
      
                  //4th Image of Slider
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/ilaveezhapoonjira.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, // This aligns the child of the container
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.0, bottom: 15),
      
                          //some spacing to the child from bottom
                          child: Text("Ilaveezhapoonchira".toUpperCase(),
                              style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor: Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1))
                                      )),
      
                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/vembanad.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment
                        .bottomCenter, // This aligns the child of the container
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.0, bottom: 15),
                        child: Text("Vembanad Lake".toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor: Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1))
      //some spacing to the child from bottom
                        ),
                  ),
                ],
      
                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
            SizedBox(height: 20,),
      TextLiquidFill(
        text: 'Welcome To Kottayam',
        waveColor: Colors.teal,
       boxBackgroundColor:Colors.white,
       boxHeight: 50,
        textStyle: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        ),
      
      ),  
      SizedBox(height: 15,),
          //SizedBox(height: 50), //HeaderWithHowToReach(size: size),
            GridView.builder(
                shrinkWrap: true,
                // padding: const EdgeInsets.all(20),
                itemCount: mainsample.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // mainAxisSpacing: kDefaultPadding,
                   //crossAxisSpacing: 1,
                  // mainAxisSpacing: 10,
                  childAspectRatio: (1 / .9),
                ),
                itemBuilder: (context, index) => mainCard(
                      mainsample: mainsample[index],
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pages[index]),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
