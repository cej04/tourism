import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/viewAll.dart';

import '../../../Utils/constants.dart';
class titlereligiousPage extends StatelessWidget {
  const titlereligiousPage({
     Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);
  
  final String title;
  final Function press;
  final IconData icon;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        children: [
            Padding(
             padding: const EdgeInsets.only(left:kDefaultPadding / 2),
              child: Icon(icon),
            ),
                SizedBox(width: 10,),
                Text(title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
                ),
        //  TitleWithCustomUnderline(icon:icon,text: title),
          Spacer(),
          FloatingActionButton.extended(
            
            heroTag: "action button4",
            elevation: 0,
            backgroundColor: Colors.white,
            onPressed: press(),
             label: GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllReligious() ));
               },
               child: const Text(
                 
                 
                 "View All",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
             )
            )
        ],
      ),
    );
  }
}

// class TitleWithCustomUnderline extends StatelessWidget {
//   const TitleWithCustomUnderline({
//      Key? key,
//      required this.icon,
//     required this.text,
//   }) : super(key: key);
//   final String text;
//   final IconData icon;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:24,
//       child: Stack(
//         children: [
//           // Padding(padding: const EdgeInsets.only(left:kDefaultPadding / 2),
//           // child: Icon(icon),
//           // ),
          
//           Padding(
//             padding: const EdgeInsets.only(left:kDefaultPadding / 2),
//             child: Row(
//              // mainAxisAlignment: MainAxisAlignment.start,
//               //crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Icon(icon),
//                 // SizedBox(width: 10,),
//                 // Text(text,
//                 // style: TextStyle(
//                 //   fontSize: 18,
//                 //   fontWeight: FontWeight.bold
//                 // )
//                 // ),
                
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

