

import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_howToReach.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/AirDetails.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/RoadDetail.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/TrainDetail.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reach.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

//import 'package:ktmtourism/header_how_to_reach.dart';



class HowToReachPage extends StatelessWidget {
  
  const HowToReachPage({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List pages =[ 
       const AirDetailPage(),
      const TrainDetailPage(),
      const RoadDetailPage(),
     

    ];
    Size size = MediaQuery.of(context).size;
    return 
    Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: const MyAppBar(),
      ),
      body: Column(
        children: [
          HeaderWithHowToReach(size: size),
            //HeaderWithHowToReach(size: size),
          // Expanded(
          //   child: GridView.builder(
          //      padding: const EdgeInsets.all(20),
          //     itemCount: howtoreach.length,
          //     gridDelegate:
          //     SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //     // mainAxisSpacing: kDefaultPadding,
          //     crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //     // childAspectRatio: 0.75,
          //     ),
            
          //   itemBuilder: (context,index) => HowToReachCard(
          //     howtoreach: howtoreach[index],
          //      press: () =>  Navigator.push(context, MaterialPageRoute(
          //          builder: (context) => pages[index]
          //            ),
          //         ),
          //   )
          //   ),
          //   )
      Expanded(
            child: Container(
              child: 
ListView.builder(
          itemCount: howtoreach.length,
          itemBuilder: (context, index) {
            return 
            
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: GestureDetector(
                 
                 child: Container(
                   height: 200,
                  //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
                  //  width: size.width * 0.8,
                  //   height:185,
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                     image:DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage( howtoreach[index].image))
                   ),
                   
                    alignment: Alignment.bottomCenter, // This aligns the child of the container
                  child: Padding(
                   padding: EdgeInsets.only(left: 15.0,
                   bottom: 15), //some spacing to the child from bottom
                   child: Text( howtoreach[index].title.toUpperCase(),  style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white,backgroundColor:Colors.black.withOpacity(0.5), ).copyWith(letterSpacing: 1))
                  )
                 
                    ),
                    onTap: () => Navigator.push(
                   context, MaterialPageRoute(
                    builder: (context) => pages[index]
          //            ),
                       )
               
               
               ),
             )
             );
           }
            ),
            )
          )
        ],
      ),
    );
  }
}

