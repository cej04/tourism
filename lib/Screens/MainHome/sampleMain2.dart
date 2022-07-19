import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Ayurveda/AyurvedaPage.dart';
import 'package:ktmtourism/Screens/Destination/DestinationPage.dart';
import 'package:ktmtourism/Screens/Grihasthali/GrihasthaliPage.dart';
import 'package:ktmtourism/Screens/Heritage/HeritagePage.dart';
import 'package:ktmtourism/Screens/HillStation/HillStationPage.dart';
import 'package:ktmtourism/Screens/HomeStay/HomeStayPage.dart';
import 'package:ktmtourism/Screens/Hotel/HotelPage.dart';
import 'package:ktmtourism/Screens/Kumarakom/KumarakomPage.dart';
import 'package:ktmtourism/Screens/MainHome/main.dart';
import 'package:ktmtourism/Screens/MainHome/maincard.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Resort/ResortPage.dart';
import 'package:ktmtourism/Screens/ServicedVilla/ServicedVillaPage.dart';
import 'package:ktmtourism/Screens/RestHouse/StateOwnedPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


class MainSample2Page extends StatefulWidget {
  const MainSample2Page({
    Key? key,
  }) : super(key: key);

  @override
  State<MainSample2Page> createState() => _MainSample2PageState();
}

class _MainSample2PageState extends State<MainSample2Page> {
  int activeIndex = 0;
  final images = [
    "assets/place/ku-canalcruise.jpg",
    "assets/place/des-malarickal.jpg",
    "assets/images/poonjarkottaram.jpg", 
    "assets/place/hs-illickal.jpg",
    "assets/pilgrim/pil-puthupalli.jpg",
    "assets/stay/ac-soma.jpg",
    "assets/stay/ho-olive.jpg",
    "assets/stay/hs-achadipura.jpg",
    
  ];
  final titles = [
    "Backwaters",
    "Picnic Spots",
    "Heritage Destinations",
    "Hill Stations",
    "Pilgrim Centres",
    "Ayurveda Centres",
    "Hotels",
    "Home Stays",
  ];

  @override
  Widget build(BuildContext context) {
    List pages = [
      KumarakomPage(),
      DestinationPage(),
      HeritagePage(),
      HillStationPage(),
      PilgrimKtmPage(),
      AyurvedaPage(),
      GrihasthaliPage(),
      StateOwnedPage(),
      ResortPage(),
      HotelPage(),
      HomeStayPage(),
      ServicedVillaPage(),
   
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: CarouselSlider.builder(
              itemCount: images.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            // border: Border.all(
                            //   color: Colors.teal,
                            //   width: 5.0
                            // ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
       // spreadRadius: 3,
        blurRadius: 10,
        offset: Offset(5, 5),
                              )
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(images[itemIndex]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(left: 15.0, bottom: 10),
                              child: Text(titles[itemIndex].toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.apply(
                                        color: Colors.white,
                                        backgroundColor:
                                            Colors.black.withOpacity(0.3),
                                      )
                                      .copyWith(letterSpacing: 2)))),
              options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                  onPageChanged: (itemIndex, reason) =>
                      setState(() => activeIndex = itemIndex)),
            ),
          ),
          CarouselIndicator(
            cornerRadius: 20.0,
            width: 10,
            count: images.length,
            index: activeIndex,
            activeColor: Colors.teal,
            color: Colors.grey,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: mainsample.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1.0
                    //childAspectRatio: (1 / .9),
                    ),
                itemBuilder: (context, index) => mainCard(
                      mainsample: mainsample[index],
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pages[index]),
                      ),
                    )),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
