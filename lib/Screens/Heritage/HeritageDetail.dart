// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Heritage/Heritage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HeritageDetail extends StatelessWidget {
  final Heritage heritage;
  const HeritageDetail({Key? key, required this.heritage}) : super(key: key);

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
                      image: AssetImage(heritage.image),
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
                                heritage.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Text(
                              //     heritage.address,
                              //     style: TextStyle(color: Colors.white),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
           
              heritage.desc.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Description"),
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          heritage.desc,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
                heritage.reach.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Getting There"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          heritage.reach,
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
              //      ayurveda.treatment.isNotEmpty ?
              // Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ExpansionTile(
              //       collapsedBackgroundColor: Colors.grey[200],
              //       title: Text("Ayurvedic Treatments"),
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Text(
              //             ayurveda.treatment,
              //             textAlign: TextAlign.justify,
              //           ),
              //         )
              //       ],
              //       // subtitle: Text(ayurveda.overview),
              //     )):Container(),
              // Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ExpansionTile(
              //       collapsedBackgroundColor: Colors.grey[200],
              //       title: Text("Contact Us"),
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(
              //             children: [
              //               Column(
              //                 children: [
              //                   // Row(
              //                   //   mainAxisAlignment: MainAxisAlignment.center,
              //                   //   children: [
              //                   //     Icon(
              //                   //       Icons.phone,
              //                   //       color: Colors.teal,
              //                   //     ),
              //                   //     TextButton(
              //                   //       onPressed: () async {
              //                   //         final url = 'tel:${ayurveda.ph1}';
              //                   //         // final url = 'tel:$stateowned.phone';
              //                   //         if (await canLaunch(url)) {
              //                   //           await launch(url);
              //                   //         }
              //                   //       },
              //                   //       child: Text(ayurveda.ph1),
              //                   //     )
              //                   //   ],
              //                   // ),
                             
              //                   // Row(
              //                   //   mainAxisAlignment: MainAxisAlignment.center,
              //                   //   children: [
              //                   //    ayurveda.ph2.isNotEmpty ?
              //                   //     TextButton(
              //                   //         onPressed: () async {
              //                   //           final url = 'tel:${ayurveda.ph2}';
              //                   //           // final url = 'tel:$stateowned.phone';
              //                   //           if (await canLaunch(url)) {
              //                   //             await launch(url);
              //                   //           }
              //                   //         },
              //                   //         child: Text(ayurveda.ph2)):Container(),
              //                   //         ayurveda.ph3.isNotEmpty ?
              //                   //          TextButton(
              //                   //         onPressed: () async {
              //                   //           final url = 'tel:${ayurveda.ph3}';
              //                   //           // final url = 'tel:$stateowned.phone';
              //                   //           if (await canLaunch(url)) {
              //                   //             await launch(url);
              //                   //           }
              //                   //         },
              //                   //         child: Text(ayurveda.ph3)):Container()
              //                   //   ],
              //                   // ),
              //                 ],
              //               ),
              //               // Column(
              //               //   children: [
              //               //     Row(
              //               //       mainAxisAlignment: MainAxisAlignment.center,
              //               //       children: [
              //               //         Icon(
              //               //           Icons.email,
              //               //           color: Colors.teal,
              //               //         ),
              //               //         TextButton(
              //               //             onPressed: () async {
              //               //               final url =
              //               //                   'mailto:${ayurveda.email1}';
              //               //               if (await canLaunch(url)) {
              //               //                 await launch(url);
              //               //               }
              //               //             },
              //               //             child: Text(ayurveda.email1))
              //               //       ],
              //               //     ),
              //               //     Row(
              //               //       mainAxisAlignment: MainAxisAlignment.center,
              //               //       children: [
              //               //          ayurveda.email2.isNotEmpty ?
              //               //         TextButton(
              //               //             onPressed: () async {
              //               //               final url =
              //               //                   'mailto:${ayurveda.email2}';
              //               //               if (await canLaunch(url)) {
              //               //                 await launch(url);
              //               //               }
              //               //             },
              //               //             child: Text(ayurveda.email2)):Container()
              //               //       ],
              //               //     ),
              //               //   ],
              //               // ),
              //               // SingleChildScrollView(
              //               //   scrollDirection: Axis.horizontal,
              //               //   child: Column(
              //               //     children: [
              //               //       Row(
              //               //         mainAxisAlignment: MainAxisAlignment.center,
              //               //         children: [
              //               //           Icon(
              //               //             Icons.web,
              //               //             color: Colors.teal,
              //               //           ),
              //               //           TextButton(  onPressed: () async {
              //               //           final Uri url = Uri.parse(
              //               //               ayurveda.website);
              //               //           if (await canLaunchUrl(url)) {
              //               //             await launchUrl(url);
              //               //           }
              //               //         },
              //               //           child: Text(ayurveda.website))
              //               //         ],
              //               //       ),
              //               //     ],
              //               //   ),
              //               // )
              //             ],
              //           ),
              //         ),
              //         // )
              //       ],
              //       // subtitle: Text(ayurveda.overview),
              //     )),
              
              
               Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Stay",
                            style: Theme.of(context).textTheme.titleSmall),
                       
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            String activity =
                                heritage.stayimage[index];

                            return Row(
                             
                              children: [
                                Container(
                                    
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    height: MediaQuery.of(context).size.height,
                                    child: Image.asset(
                                      activity,
                                      fit: BoxFit.cover,
                                    )),
                              
                              ],
                            );
                          },
                          separatorBuilder: (_, index) => const SizedBox(
                                width: 10.0,
                              ),
                          itemCount: heritage.stayimage.length),
                    ),
                  ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                  label: Text('Locate On Map'), // <-- Text
                  backgroundColor: Colors.teal,
                  icon: Icon(
                    // <-- Icon
                    Icons.location_pin,
                    size: 24.0,
                  ),
                  onPressed: () {
                    MapUtils.openMap(heritage.latitude, heritage.longitude);
                  },
                ),
              ), 
            ],
          ),
        ));
  }
}
