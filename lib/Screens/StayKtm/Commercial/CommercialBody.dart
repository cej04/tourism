import 'package:flutter/material.dart';

import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/CommercialDetailPage.dart';
import 'package:ktmtourism/Utils/constants.dart';

class CommercialBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return 
    Container(
      //margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
     // width: size.width * 0.8,
     
      height:185,
     child: ListView.builder(
       scrollDirection: Axis.horizontal,
       itemCount: commercial.length,
       itemBuilder: (BuildContext context, int index) {
         Commercial commercials = commercial[index];
         return 
         GestureDetector(
             onTap: () {

                  Navigator.push(context, MaterialPageRoute(
                   builder: (context) {
                     return commercialDetailsPage(commercial: commercials,);
                   } ),
                  );
                },
           child: Container(
               margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
               width: size.width * 0.8,
                height:185,
               decoration: BoxDecoration(
                 borderRadius:BorderRadius.circular(10),
                 image:DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(commercials.image))
               ),
               
                alignment: Alignment.bottomCenter, // This aligns the child of the container
              child: Padding(
               padding: EdgeInsets.only(left: 15.0,
               bottom: 15), //some spacing to the child from bottom
               child: Text(commercials.title.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
              )
             
                ),
         );
       
       },
     ),
        );
  }
}