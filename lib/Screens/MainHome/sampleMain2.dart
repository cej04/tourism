import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/MainHome/main.dart';
import 'package:ktmtourism/Screens/MainHome/mainCard.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/StayKtm/stayktmbodyPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/body.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
//import 'package:ktmtourism/header_how_to_reach.dart';



class MainSample2Page extends StatelessWidget {
  
  const MainSample2Page({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pages =[ 
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
    return 
    Scaffold(
      //  appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(60.0),
       
      //     child: const MyAppBar(),
        
      // ),
      body: Column(
        children: [
         
        //  HeaderWithHowToReach(size: size),
           Container(
              
                color:Colors.grey[350],

                child: CarouselSlider(
                  
                items: [
                    
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/vagamon.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                     alignment: Alignment.bottomCenter, // This aligns the child of the container
     child: Padding(
      padding: EdgeInsets.only(left: 15.0,
      bottom: 15), //some spacing to the child from bottom
      child: Text("Vagamon".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
     )
    
                  ),
                    
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
                     alignment: Alignment.bottomCenter, // This aligns the child of the container
     child: Padding(
      padding: EdgeInsets.only(left: 15.0,
      bottom: 15), //some spacing to the child from bottom
      child: Text("Kumarakom".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
     )
    
                  ),
                    
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
                     alignment: Alignment.bottomCenter, // This aligns the child of the container
     child: Padding(
      padding: EdgeInsets.only(left: 15.0,
      bottom: 15), //some spacing to the child from bottom
      child: Text("Bharananganam Church".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
     )
    
                  ),
                    
                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/ilaveezhapoonjira.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                     alignment: Alignment.bottomCenter, // This aligns the child of the container
     child: Padding(
      padding: EdgeInsets.only(left: 15.0,
      bottom: 15), //some spacing to the child from bottom
      child: Text("Ileveezhapoonjira".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
     )
    
                  ),
                    
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
                     alignment: Alignment.bottomCenter, // This aligns the child of the container
     child: Padding(
      padding: EdgeInsets.only(left: 15.0,
      bottom: 15), //some spacing to the child from bottom
      child: Text("Vembanad Lake".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
     )
    
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
               SizedBox(height:50)
,            //HeaderWithHowToReach(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: mainsample.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => mainCard(
              mainsample: mainsample[index],
               press: () =>  Navigator.push(context, MaterialPageRoute(
                   builder: (context) => pages[index]
                     ),
                  ),
            )
            ),
            )
        ],
      ),
    );
  }
}

