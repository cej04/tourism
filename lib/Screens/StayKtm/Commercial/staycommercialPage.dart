// import 'package:flutter/material.dart';
// import 'package:ktmtourism/Screens/Welcome/welcomektmPage.dart';

// import '../../../Utils/constants.dart';

// class StayCommercialPage extends StatelessWidget {
//   const StayCommercialPage({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//      return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           StayCommercialPageCard(
          
//             image: "assets/images/taj.jpg",
//             title: "Taj Garden Retreat",
//             press: (){
//                Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const welcomektmPage(),
//                         ),
//                       );
             
//             },
            
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/illikalam.jpg",
//             title: "Illikkalam Lake Resort",
//             press: (){
//     // Navigator.push(
//     //                     context,
//     //                     MaterialPageRoute(
//     //                       builder: (context) => const welcomektmPage(),
//     //                     ),
//     //                   );              
//             },
//           ),
//           // StayGovPageCard(
//           //   image: "assets/images/guesthousektm.jpg",
//           //   title: "Guest House,mundakkayam",// need confirmation
//           //   press: (){
//           //   },
//           // ),
//            StayCommercialPageCard(
//             image: "assets/images/aida.jpg",
//             title: "Hotel Aida",
//             press: (){
//             },
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/goldenwaters.jpg",
//             title: "Golden Waters",
//             press: (){
//             },
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/tharavadu.jpg",
//             title: "Tharavadu",
//             press: (){
//             },
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/waterscapes.jpg",
//             title: "Waterscapes",
//             press: (){
//             },
//           ),
//            StayCommercialPageCard(
//             image: "assets/images/paradise.jpg",
//             title: "Paradise Resort",
//             press: (){
//             },
//           ),
//            StayCommercialPageCard(
//             image: "assets/images/cocunut.jpg",
//             title: "Coconut Lagoon",
//             press: (){
//             },
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/kumarakomlakeresort.jpg",
//             title: "Kumarakom Lake Resort",
//             press: (){
//             },
//           ),
//            StayCommercialPageCard(
//             image: "assets/images/ambassador.jpg",
//             title: "Ambassador Hotel",
//             press: (){
//             },
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/hotelNitya.jpg",
//             title: "Hotel Nithya",
//             press: (){
//             },
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/hotelPrince.jpg",
//             title: "Hotel Prince",
//             press: (){
//             },
//           ),
//          StayCommercialPageCard(
//             image: "assets/images/vembanadResort.jpg",
//             title: "Vembanad Resort",
//             press: (){
//             },
//           ),
//            StayCommercialPageCard(
//             image: "assets/images/hotelAnjali.jpg",
//             title: "Anjali Hotel",
//             press: (){
//             },
//           ),
//           StayCommercialPageCard(
//             image: "assets/images/winsorCastle.jpg",
//             title: "Windsor Castle & lake resort",
//             press: (){
//             },
//           ),
         
         
//         ],
//       ),
//     );
//   }
// }

// class StayCommercialPageCard extends StatelessWidget {
//   const StayCommercialPageCard({ Key? key ,
//    required this.image,
//     required this.title,
//     required this.press}) : super(key: key);
//     final String image, title;
//   final Function press;

//   @override
//   Widget build(BuildContext context) {
//     Size  size = MediaQuery.of(context).size;
//    return
//      Container(
//       margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
//       width: size.width * 0.8,
//       height:185,
//       decoration: BoxDecoration(
//         borderRadius:BorderRadius.circular(10),
//         image:DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage(image))
//       ),
//        alignment: Alignment.bottomCenter, // This aligns the child of the container
//    child: Padding(
//       padding: EdgeInsets.only(left: 15.0,
//       bottom: 15), //some spacing to the child from bottom
//       child: Text('$title'.toUpperCase(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.3)))
//    )
    
//               );
//   }
// }

// class StayGovPageHead extends StatelessWidget {
//   const StayGovPageHead({ Key? key,
//   required this.title,
//   required this.icon,
//    }) : super(key: key);
//     final String title;
//     final IconData icon;


//   @override
//   Widget build(BuildContext context) {
//    return Container(
     
//       child: Stack(
//         children: [
//           // Padding(padding: const EdgeInsets.only(left:kDefaultPadding / 2),
//           // child: Icon(icon),
//           // ),
          
//           Padding(
//             padding: const EdgeInsets.only(left:kDefaultPadding / 2),
//             child: Column(
//              // mainAxisAlignment: MainAxisAlignment.start,
//               //crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Icon(icon),
//                 SizedBox(width: 10,),
//                 Text(title,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold
//                 )
//                 ),
//               ],
//             ),
//           ),
//           // Positioned(
//           //   bottom: 0,
//           //   left: 0,
//           //   right: 0,
//           //   child: Container(
//           //     margin: EdgeInsets.only(right: kDefaultPadding/4),
//           //     height: 7,
//           //     color:kPrimaryColor.withOpacity(0.2)
//           //   ))
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/CommercialDetailPage.dart';

import 'package:ktmtourism/Utils/constants.dart';

class StayCommercialPage extends StatelessWidget {
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
               child: Text(commercials.title.toUpperCase(),  style: Theme.of(context).textTheme.caption?.apply(color: Colors.white,backgroundColor:Colors.black.withOpacity(0.5), ).copyWith(letterSpacing: 1))
              )
             
                ),
         );
       
       },
     ),
        );
  }
}
