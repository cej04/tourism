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
    
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: CarouselSlider(
                items: [
                 
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/heritage.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom:
                                  15), 
                          child: Text("Heritage Destinations".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.apply(
                                    color: Colors.white,
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                  )
                                  .copyWith(letterSpacing: 1)))),

                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/back1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, 
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom:
                                  15),
                          child: Text("Backwaters".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.apply(
                                    color: Colors.white,
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                  )
                                  .copyWith(letterSpacing: 1)))),

                 
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/aruvikkuzhi waterfalls.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, 
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom:
                                  15),
                          child: Text("Waterfalls".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.apply(
                                    color: Colors.white,
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                  )
                                  .copyWith(letterSpacing: 1)))),

                
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/vallyachanmala.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.0, bottom: 15),

                         
                          child: Text("Worship".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.apply(
                                    color: Colors.white,
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                  )
                                  .copyWith(letterSpacing: 1)))),

              
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/illikkal-kallu3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment
                        .bottomCenter, 
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.0, bottom: 15),
                        child: Text("Hill Stations".toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1))
                     
                        ),
                  ),
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/paddy-filed1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, 
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom:
                                  15), 
                          child: Text("Agriculture".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.apply(
                                    color: Colors.white,
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                  )
                                  .copyWith(letterSpacing: 1)))),
                  Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/bird-sanctuary9.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment
                          .bottomCenter, 
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 15.0,
                              bottom:
                                  15), 
                          child: Text("Wildlife".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  ?.apply(
                                    color: Colors.white,
                                    backgroundColor:
                                        Colors.black.withOpacity(0.5),
                                  )
                                  .copyWith(letterSpacing: 1)))),
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
           
            SizedBox(
              height: 15,
            ),
            // CategoriesPage() ,
            SizedBox(
              height: 15,
            ),
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
