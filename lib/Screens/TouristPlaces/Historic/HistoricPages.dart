import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/Destination_screen.dart';
import 'package:ktmtourism/Screens/destination_model.dart';
import 'package:ktmtourism/Utils/constants.dart';





class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Column(
        children:[
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal:20.0),
          //   child: Row(
          //     //mainAxisAlignment:MainAxisAlignment.spaceBetween,
          //     children: [
          //        Icon(Icons.history_edu),
          //        SizedBox(width:10.0),
          //       const Text("Historic",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          //      Spacer(),
          //       GestureDetector(child: const Text("view all",style: TextStyle(
          //             color: Colors.black, fontWeight: FontWeight.bold)))
          //     ],
          //   ),
          // ),
          Container(
            
            height: 200.0,
           // color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:destinations.length,
              itemBuilder:(BuildContext context ,int index) {
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(
                   builder: (context) => DestinationScreen(destination: destination,) ),
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
                        image: AssetImage(destination.imageU))
                ),
                 alignment: Alignment.bottomCenter, // This aligns the child of the container
                         child: Padding(
                padding: const EdgeInsets.only(left: 15.0,
                bottom: 15), //some spacing to the child from bottom
                child: Text(destination.title.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
                         )
                          
                ),
              );
            }),
          )
        ]
      );
  }
}