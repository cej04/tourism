// // ignore_for_file: deprecated_member_use

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:ktmtourism/Screens/Kumarakom/kumarakom.dart';
// import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
// import 'package:ktmtourism/Screens/map_utils.dart';
// import 'package:url_launcher/url_launcher.dart';

// class KumarakomDetail extends StatefulWidget {
//   final KumaraKom Kumarakom;
//   const KumarakomDetail({Key? key, required this.Kumarakom})
//       : super(key: key);

//   @override
//   State<KumarakomDetail> createState() => _KumarakomDetailState();
// }

// class _KumarakomDetailState extends State<KumarakomDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight),
//           child: const MyAppBar(
//             title: 'Kottayam Tourism',
//           ),
//         ),
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Ink.image(
//                       image: AssetImage(widget.Kumarakom.image),
//                       width: double.infinity,
//                       height: 300,
//                       fit: BoxFit.cover),
//                   Positioned(
//                     bottom: 0.0,
//                     right: 0.0,
//                     child: Opacity(
//                       opacity: .9,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.blueGrey,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(10),
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 widget.Kumarakom.name,
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 18),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               widget.Kumarakom.desc.isNotEmpty
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ExpansionTile(
//                         initiallyExpanded: true,
//                         collapsedBackgroundColor: Colors.grey[200],
//                         title: Text("Description"),

//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(16.0),
//                             child: Text(
//                               widget.Kumarakom.desc,
//                               textAlign: TextAlign.justify,style: TextStyle(height:1.9),
//                             ),
//                           ),
//                         ],
//                         // subtitle: Text(ayurveda.overview),
//                       ))
//                   : Container(),
//                    widget.Kumarakom.contact.isNotEmpty
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ExpansionTile(
//                         initiallyExpanded: false,
//                         collapsedBackgroundColor: Colors.grey[200],
//                         title: Text("Contact"),

//                         children: [
//                           Text(
//                             widget.Kumarakom.contact,
//                             textAlign: TextAlign.start,style: TextStyle(height:1.9),
//                           ),
//                           Text(
//                               widget.Kumarakom.ph,
//                               textAlign: TextAlign.justify,style: TextStyle(height:1.9),
//                             ),
//                         ],
//                         // subtitle: Text(ayurveda.overview),
//                       ))
//                   : Container(),
//                     widget.Kumarakom.reach.isNotEmpty
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ExpansionTile(
//                         initiallyExpanded: false,
//                         collapsedBackgroundColor: Colors.grey[200],
//                         title: Text("Getting There"),

//                         children: [
//                           Text(
//                             widget.Kumarakom.reach,
//                             textAlign: TextAlign.start,style: TextStyle(height:1.9),
//                           ),
//                           Text(
//                               widget.Kumarakom.ph,
//                               textAlign: TextAlign.justify,style: TextStyle(height:1.9),
//                             ),
//                         ],
//                         // subtitle: Text(ayurveda.overview),
//                       ))
//                   : Container(),
//               // widget.Kumarakom.reach.isNotEmpty
//               //     ? ExpansionTile(
//               //       collapsedBackgroundColor: Colors.grey[200],
//               //       title: Text("Getting There"),
//               //       children: [
//               //         Padding(
//               //           padding: const EdgeInsets.all(16.0),
//               //           child: Text(
//               //             widget.Kumarakom.reach,
//               //             textAlign: TextAlign.justify,
//               //           ),
//               //         )
//               //       ],
//               //     )
//               //     : Container(),
//                   Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
// ElevatedButton.icon(
//                   onPressed: () {
//                       //OnPressed Logic
//                   },
//                   icon: const Icon(Icons.night_shelter_outlined),
//                   label: const Text(
//                       "Where to Stay"
//                   )
//                 ),            // FlatButton(
//        ElevatedButton.icon(
//                   onPressed: () {
//                       //OnPressed Logic
//                   },
//                   icon: const Icon(Icons.pin_drop),
//                   label: const Text(
//                       "Locate on Map"
//                   )
//                 ), 
       
//             //  FlatButton(
       
//             // textColor: Colors.white,
//             //  //height: 60.0,
//             //   color: Colors.teal,
//             //   onPressed: () {},
//             //   child: Row(
//             //     mainAxisAlignment: MainAxisAlignment.center,
//             //     children: [
//             //       Padding(
//             //         padding: const EdgeInsets.all(8.0),
//             //         child: Icon(Icons.pin_drop, color: Colors.white,),
//             //       ),
//             //       Text('Locate on Map', )
//             //     ],
//             //   ),
//             // ),
//           ],
//                 //  Expanded(
//                   //    child: ListView.builder(
//                   //            itemCount: advancedTiles.length,
//                   //            itemBuilder: (BuildContext context, int index) {
//                   //             return
//                   //              ListTile(
//                   //                  leading: const Icon(Icons.list),
//                   //                  trailing: const Text(
//                   //                    "GFG",
//                   //                    style: TextStyle(color: Colors.green, fontSize: 15),
//                   //                  ),
//                   //                  title: Text("List item $index"));
//                   //            }),
//                   //  ),
    
//               // ExpansionPanelList.radio(
//               //   expansionCallback: (index, isExpanded) {
//               //     final tile = advancedTiles[index];
//               //     setState(() => tile.isExpanded = isExpanded);
//               //   },
//               //   children: advancedTiles
//               //       .map((tile) => ExpansionPanelRadio(
//               //             value: tile.title,
//               //             canTapOnHeader: true,
//               //             headerBuilder: (context, isExpanded) =>
//               //                 buildTile(tile),
//               //             body: Column(
//               //               children: tile.tiles.map(buildTile).toList(),
//               //             ),
//               //           ))
//               //       .toList(),
//               // ),
// // ElevatedButton.icon(
// //   onPressed: () {
// //       // Respond to button press
// //   },
// //   icon: Icon(Icons.night_shelter_outlined,),
// //   label: Text("Where to Stay"),
// // ),
//                   )
//             ],
//           ),
//         ),
//       // floatingActionButton: Row(
//       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //   children: [FloatingActionButton.extended(
//       //     onPressed: (){},
//       //     icon: Icon(Icons.pin_drop),
//       //     label: Text('Locate on Map'),
//       //      heroTag: null,
//       //   ),
//       //   FloatingActionButton.extended(
//       //     onPressed: (){},
//       //     icon: Icon(Icons.night_shelter_outlined),
//       //     label: Text('Where to Stay'),
//       //      heroTag: null,
//       //   ),
        
//       //   ],),
       
        
//         );
//   }
// }

// // Widget buildTile(AdvancedTile tile) => Padding(
// //   padding: const EdgeInsets.all(8.0),
// //   child:   ListTile(
// //         title: Text(tile.title),
// //         leading: Image.asset(tile.simage),
// //         //subtitle: Text(tile.web),
// //         trailing: Text(tile.dis),
// //         onTap: () {},
// //       ),
// // );
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/Kumarakom/kumarakom.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class KumarakomDetail extends StatelessWidget {
  final KumaraKom Kumarakom;
  const KumarakomDetail({Key? key, required this.Kumarakom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(
            title: 'Kottayam Tourism',
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                      image: AssetImage(Kumarakom.image),
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Opacity(
                      opacity: .9,
                      child: Container(

                        decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          
                                        ),
                                      ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                Kumarakom.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
           
                Kumarakom.desc.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    initiallyExpanded: true,
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Description"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Kumarakom.desc,
                          textAlign: TextAlign.justify,
                            style: TextStyle(height: 1.9),
                        ),
                      )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
                               Kumarakom.contact.isNotEmpty ?
 
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Contact Us"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                         Kumarakom.ph.isNotEmpty ?

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.teal,
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        final url = 'tel:${Kumarakom.ph}';
                                        // final url = 'tel:$stateowned.phone';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        }
                                      },
                                      child: Text(Kumarakom.ph),
                                    )
                                  ],
                                ):Container()
                             
                           
                              ],
                            ),
                                             Kumarakom.contact.isNotEmpty ?

                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  
                                   Text(
                          Kumarakom.contact,
                          textAlign: TextAlign.justify,
                            style: TextStyle(height: 1.9),
                        ),
                                  ],
                                ),
                               
                              ]
                            ):Container(),
                                               Kumarakom.email.isNotEmpty ?

                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.email,
                                      color: Colors.teal,
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          final url =
                                              'mailto:${Kumarakom.email}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(Kumarakom.email))
                                  ],
                                ),
                               
                              ]
                            ):Container(),
                          
                          ],
                        ),
                      ),
                      // )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )):Container(),
                  
              //            Kumarakom.stay.isNotEmpty ?
              // Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ExpansionTile(
              //       collapsedBackgroundColor: Colors.grey[200],
              //       title: Text("Where to Stay"),
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child:  Row(
              //                                               mainAxisAlignment: MainAxisAlignment.center,

              //             children: [
              //                Icon(
              //                         Icons.web,
              //                         color: Colors.teal,
              //                       ),
              //               TextButton(  onPressed: () async {
              //                             final Uri url = Uri.parse(
              //                                 Kumarakom.stay);
              //                             if (await canLaunchUrl(url)) {
              //                               await launchUrl(url);
              //                             }
              //                           },
              //                             child: Text(Kumarakom.stay)),
              //             ],
              //           )
              //         )
              //       ],
              //       // subtitle: Text(ayurveda.overview),
              //     )): Container(),
                   Kumarakom.reach.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Getting There"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Kumarakom.reach,
                          textAlign: TextAlign.justify,
                            style: TextStyle(height: 1.9),
                        ),
                      )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton.icon(
                    icon: Icon(Icons.night_shelter),
                    label: Text('Where to Stay'),
                    onPressed: () async {
                                      final Uri url = Uri.parse(
                                          Kumarakom.stay);
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    },
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.location_pin),
                    label: Text('Locate on Map'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        MapUtils.openMap(Kumarakom.latitude, Kumarakom.longitude);
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('No Internet!'),
                              content: Text(
                                  'Internet is required for this action.  Retry after enabling the Connection'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ok'))
                              ],
                            );
                          },
                        );
                      }
                      ;
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
