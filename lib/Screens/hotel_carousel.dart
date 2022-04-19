import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/destination_model.dart';

import 'package:ktmtourism/Screens/hotel_model.dart';
import 'package:ktmtourism/Utils/constants.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       Size  size = MediaQuery.of(context).size;
    return Column(
        children:[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("top destinations"),
                GestureDetector(child: Text("view all"))
              ],
            ),
          ),
          Container(
            height: 300.0,
           // color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:destinations.length,itemBuilder:(BuildContext context ,int index) {
              Hotel hotel = hotels[index];
              return Container(
      margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
      width: size.width * 0.8,
      height:185,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(hotel.imageU))
      ),
       alignment: Alignment.bottomCenter, // This aligns the child of the container
   child: Padding(
      padding: EdgeInsets.only(left: 15.0,
      bottom: 15), //some spacing to the child from bottom
      child: Text(hotel.name.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
   )
    
              );
            }),
          )
        ]
      );
  }
}