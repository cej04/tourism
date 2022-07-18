// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/Hotel/Hotel.dart';

import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelDetail extends StatelessWidget {
  final Hotel hotel;
  const HotelDetail({Key? key, required this.hotel}) : super(key: key);

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
                      image: AssetImage(hotel.image),
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
                                hotel.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  hotel.address,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
           
              hotel.overview.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    initiallyExpanded: true,
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Overview"),
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          hotel.overview,
                          textAlign: TextAlign.justify,
                          style: TextStyle(height: 1.7)
                        ),
                      ),
                      
                    ],
                    // subtitle: Text(HotelDetail.overview),
                  )): Container(),
                hotel.facilities.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Facilities"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          hotel.facilities,
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                    // subtitle: Text(HotelDetail.overview),
                  )): Container(),
                
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.teal,
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        final url = 'tel:${hotel.ph1}';
                                        // final url = 'tel:$stateowned.phone';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        }
                                      },
                                      child: Text(hotel.ph1),
                                    )
                                  ],
                                ),
                             
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    hotel.ph2.isNotEmpty ?
                                    TextButton(
                                        onPressed: () async {
                                          final url = 'tel:${hotel.ph2}';
                                          // final url = 'tel:$stateowned.phone';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(hotel.ph2)): Container(),
                                        hotel.ph3.isNotEmpty ?
                                 TextButton( onPressed: () async {
                                          final url = 'tel:${hotel.ph3}';
                                          // final url = 'tel:$stateowned.phone';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(hotel.ph3)):Container()
                                        
                                  ],
                                ),
                              ],
                            ),
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
                                              'mailto:${hotel.email1}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(hotel.email1))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    hotel.email2.isNotEmpty ?
                                    TextButton(
                                        onPressed: () async {
                                          final url =
                                              'mailto:${hotel.email2}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(hotel.email2)): Container()
                                  ],
                                ),
                              ],
                            ),
                            hotel.website.isNotEmpty
                                ? ElevatedButton.icon(
                                    icon: Icon(Icons.web),
                                    label: Text(hotel.website),
                                    onPressed: () async {
                                      if (await InternetConnectionChecker()
                                          .hasConnection) {
                                        final Uri url =
                                            Uri.parse(hotel.website);
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        }
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
                                  )
                                : Container()
                            // SingleChildScrollView(
                            //   scrollDirection: Axis.horizontal,
                            //   child: Column(
                            //     children: [
                            //       Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           Icon(
                            //             Icons.web,
                            //             color: Colors.teal,
                            //           ),
                            //           TextButton(  onPressed: () async {
                            //           final Uri url = Uri.parse(
                            //               hotel.website);
                            //           if (await canLaunchUrl(url)) {
                            //             await launchUrl(url);
                            //           }
                            //         },
                            //           child: Text(hotel.website))
                            //         ],
                            //       ),
                            //     ],
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      // )
                    ],
                    // subtitle: Text(HotelDetail.overview),
                  ),),
                  ElevatedButton.icon(
                    icon: Icon(Icons.location_pin),
                    label: Text('Locate on Map'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        MapUtils.openMap(hotel.latitude, hotel.longitude);
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
        ));
  }
}
