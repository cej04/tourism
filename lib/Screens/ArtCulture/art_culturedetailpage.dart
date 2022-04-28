// import 'package:flutter/material.dart';
// import 'package:ktmtourism/Screens/ArtCulture/art_culture.dart';
// import 'package:ktmtourism/Screens/ArtCulture/art_culturebodyPage.dart';



// //import 'culinary_bodyPage.dart';

// class ArtCultureDetailsPage extends StatelessWidget {
//   final ArtCulture artculture;
//   const ArtCultureDetailsPage({ Key? key,required this.artculture }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 5.0),
//               child: IconButton(
//                 icon: Icon(
//                   Icons.more_vert,
//                 ),
//                 onPressed: () {
//                   //  PopupMenuButton(
//                   //     itemBuilder: (context) => [
//                   //       PopupMenuItem(
//                   //         child: Text("First"),
//                   //         value: 1,
//                   //       ),
//                   //       PopupMenuItem(
//                   //         child: Text("Second"),
//                   //         value: 2,
//                   //       )
//                   //     ]
//                   // );
//                 },
//               ),
//             ),
//             Text("Kottayam Tourism",style: TextStyle(color:Colors.black),),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Image.asset(
//                     "assets/images/APPlogo2.png",
//                     fit: BoxFit.cover,
//                     // width: 70.0,
//                     // height: 70.0,
//                   )),
//             ),
//           ],
//         ),
//         actions: [],
//       ),
//       body:ArtCultureBodyPage(artculture: artculture,),
//     );
//   }
// }