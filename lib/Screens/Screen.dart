// import 'package:flutter/material.dart';
// import 'package:ktmtourism/Screens/destination_carousel.dart';
// import 'package:ktmtourism/Screens/hotel_carousel.dart';


// class HomeScreen extends StatelessWidget {
//   const HomeScreen({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: SafeArea(
//         child: ListView(
//           padding: EdgeInsets.symmetric(vertical: 30.0),
//           children: const <Widget>[
//             Padding(
//               padding: EdgeInsets.only(left: 20.0, right: 120.0),
//               child: Text(
//                 'What would you like to find?',
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//             //   children: _icons
//             //       .asMap()
//             //       .entries
//             //       .map(
//             //         (MapEntry map) => _buildIcon(map.key),
//             //       )
//             //       .toList(),
//             // ),
//             SizedBox(height: 20.0),
//             DestinationCarousel(),
//             SizedBox(height: 20.0),
//             HotelCarousel(),
//           ],
//         ),
//       ),
//     );
    
//   }
// }