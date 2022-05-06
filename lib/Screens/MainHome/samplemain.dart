import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturePage.dart';
import 'package:ktmtourism/Screens/Culinary/culinarydelightsPage.dart';
import 'package:ktmtourism/Screens/Festivals/festivalPage.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimktmPage.dart';
import 'package:ktmtourism/Screens/Produce/producePage.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reachPage.dart';
import 'package:ktmtourism/Screens/StayKtm/stayktmbodyPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/HomeScreen/body.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';


class MainHomeSample extends StatefulWidget {
  const MainHomeSample({ Key? key }) : super(key: key);

  @override
  State<MainHomeSample> createState() => _MainHomeSampleState();
}

class _MainHomeSampleState extends State<MainHomeSample> {
  @override
  Widget build(BuildContext context) {
    
    
    return ListView(
      children: [
        Column(
          children: [
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
               child: Text("vagamon".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
              ),
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
               child: Text("kumarakom".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
              ),
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
              ),
                    
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
               child: Text("ilaveezhapoonjira".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
              ),
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
               child: Text("vembanad".toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
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
               
          SizedBox(height:25),
          Container(
            
            margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height*.5,
            child: GridView.count(
              crossAxisCount: 3,
            mainAxisSpacing:15,
            crossAxisSpacing: 15,
            children: [
             customGridView(Icons.explore_outlined,'About Kottayam'),
             customGridView(Icons.bed_rounded,'Tourist Places'),
             customGridView(Icons.holiday_village,'Stay in Kottayam'),
             customGridView(Icons.flatware,'Culinary Delights'),
             customGridView(Icons.color_lens,'Produce'),
              customGridView(Icons.celebration_rounded,'Festivals'),
             customGridView(Icons.festival_outlined,'Art & Culture'),
             customGridView(Icons.commute_outlined,'How to Reach'),
            ],
            ),
            
          )
        
          ],
        )
      ],
      
    );
   
  }

   GestureDetector customGridView(IconData icon,title){
    
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
    
      return  GestureDetector(
        child: Container(
                
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    // boxShadow: [
                    //  BoxShadow(
                    //    color:Colors.grey,
                    //  spreadRadius: 1,
                    //  blurRadius: 8) 
                    // ]
                  ),
                  child:Column(
                   // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:[
                      Icon(icon),
                    //Image.asset('$image',fit: BoxFit.fill,),
                     // Text("About Kottayam"),
                      Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text('$title',style: TextStyle(fontSize: 12,fontWeight:FontWeight.bold),)
                        ],
                     )
                    ]
                  )
                ),
                //   onTap: () {

                //   Navigator.push(BuildContext, MaterialPageRoute(
                //    builder: (context) => pages[index]
                //      ),
                //   );
                // },
      );
    }
}