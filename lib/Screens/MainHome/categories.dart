
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:ktmtourism/Utils/constants.dart';


// class CategoriesPage extends StatefulWidget {
//   const CategoriesPage({ Key? key }) : super(key: key);

//   @override
//   State<CategoriesPage> createState() => _CategoriesPageState();
// }

// class _CategoriesPageState extends State<CategoriesPage> {
//   List<String> categories = ["Restaurant", "Shopping","Hospital",];
//   List<IconData> ico = [Icons.hotel_class_outlined ,Icons.shopping_bag_outlined  ,Icons.local_hospital_outlined ];
 
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        height: MediaQuery.of(context).size.height/14,
//        width: MediaQuery.of(context).size.width,
//       child: Expanded(
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: ((context, index) =>  BuildCategory(index))),
//       ),
      
//     );
//   }

//   Widget BuildCategory(int index) => GestureDetector(
//     onTap: () {
//       setState(() {
//         selectedIndex = index;
        
//       });
//     },
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Container( 
//            width: MediaQuery.of(context).size.width/4,
//            // height: MediaQuery.of(context).size.height/6,
//             decoration: BoxDecoration(
//               color: Color.fromRGBO(224, 243, 242, 1),
//               borderRadius: BorderRadius.circular(30),
              
//             ),
//             child:Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(ico[index]),
//                  // SizedBox(width: 10,),
//                    Text(
//                         categories[index], 
//                        // style: TextStyle(color: Colors.white),
//                       ),
//                 ],
//               ),
//             )
//             ),
//           ),
//            Container(
            
//             margin: EdgeInsets.only(top: kDefaultPadding /  8),
//             height: 2,
//             width: 60,
//             color: selectedIndex == index ?  Colors.teal : Colors.transparent,
//           )
//           // Expanded(
//           //   child: Row(
//           //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //         children: [
                    
//           //         FaIcon(ico[index]),
//           //         SizedBox(width: 10,),
                                           
//           //           Text(
//           //             categories[index], 
//           //            // style: TextStyle(color: Colors.white),
//           //           ),
//           //         ],
//           //       ),
       
//           // ),
         
        
//           // Container(
            
//           //   margin: EdgeInsets.only(top: kDefaultPadding /  4),
//           //   height: 2,
//           //   width: 60,
//           //   color: selectedIndex == index ?  Colors.teal : Colors.transparent,
//           // )
//         ],
//       ),
//     ),
//   );
// }