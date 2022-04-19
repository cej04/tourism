import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/RecreationalDetails.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/recreational.dart';


import 'package:ktmtourism/Utils/constants.dart';





class RecreationalPage extends StatelessWidget {
  const RecreationalPage({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Column(
        children:[
          
         
          Container(
            
            height: 200.0,
           // color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:recreational.length,
              itemBuilder:(BuildContext context ,int index) {
              Recreational recreationals = recreational[index];
              return GestureDetector(
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(
                   builder: (context) {
                     return RecreationalDetails(recreational: recreationals,);
                   } ),
                  );
                },
                child: Container(
                margin:const EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
                width: size.width * 0.8,
                height:185,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  image:DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(recreationals.imageU))
                ),
                 alignment: Alignment.bottomCenter, // This aligns the child of the container
                         child: Padding(
                padding: const EdgeInsets.only(left: 15.0,
                bottom: 15), //some spacing to the child from bottom
                child: Text(recreationals.title.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
                         )
                          
                ),
              );
            }
            ),
          )
        ]
      );
  }
}