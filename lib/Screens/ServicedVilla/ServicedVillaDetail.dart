// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/ServicedVilla/ServicedVilla.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicedVillaDetail extends StatelessWidget {
  final ServicedVilla servicedvilla;
  const ServicedVillaDetail({Key? key, required this.servicedvilla}) : super(key: key);

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
                      image: AssetImage(servicedvilla.image),
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
                                servicedvilla.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  servicedvilla.address,
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
        servicedvilla.overview.isNotEmpty ?
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
                          servicedvilla.overview,
                          textAlign: TextAlign.justify,
                          style: TextStyle(height: 1.7)
                        ),
                      ),
                      
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
               servicedvilla.facilities.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Facilities"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          servicedvilla.facilities,
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
              // Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ExpansionTile(
              //       collapsedBackgroundColor: Colors.grey[200],
              //       title: Text("AYURVEDIC TREATMENTS"),
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Text(
              //             Homestay.treatment,
              //             textAlign: TextAlign.justify,
              //           ),
              //         )
              //       ],
              //       // subtitle: Text(ayurveda.overview),
              //     )),
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
                                        final url = 'tel:${servicedvilla.ph1}';
                                        // final url = 'tel:$stateowned.phone';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        }
                                      },
                                      child: Text(servicedvilla.ph1),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    servicedvilla.ph2.isNotEmpty ?
                                    TextButton(
                                        onPressed: () async {
                                          final url = 'tel:${servicedvilla.ph2}';
                                          // final url = 'tel:$stateowned.phone';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(servicedvilla.ph2)): Container(),
                                        servicedvilla.ph3.isNotEmpty ?
                                    TextButton(
                                        onPressed: () async {
                                          final url = 'tel:${servicedvilla.ph3}';
                                          // final url = 'tel:$stateowned.phone';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(servicedvilla.ph3)) :Container()
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
                                              'mailto:${servicedvilla.email1}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(servicedvilla.email1))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    servicedvilla.email2.isNotEmpty ?
                                    TextButton(
                                        onPressed: () async {
                                          final url =
                                              'mailto:${servicedvilla.email2}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(servicedvilla.email2)):Container()
                                  ],
                                ),
                              ],
                            ),
                            servicedvilla.website.isNotEmpty ?
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                
                                children: [
                                  Row(
                                    
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.web,
                                        color: Colors.teal,
                                      ),
                                      TextButton(
                                          onPressed: () async {
                                            final Uri url =
                                                Uri.parse(servicedvilla.website);
                                            if (await canLaunchUrl(url)) {
                                              await launchUrl(url);
                                            }
                                          },
                                          child: Text(servicedvilla.website))
                                    ],
                                  ),
                                ],
                              ),
                            ):Container()
                          ],
                        ),
                      ),
                      // )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )),
                  ElevatedButton.icon(
                    icon: Icon(Icons.location_pin),
                    label: Text('Locate on Map'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        MapUtils.openMap(servicedvilla.latitude, servicedvilla.longitude);
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
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: FloatingActionButton.extended(
              //     label: Text('Locate On Map'), // <-- Text
              //    // backgroundColor: Colors.teal,
              //     icon: Icon(
              //       // <-- Icon
              //       Icons.location_pin,
              //       size: 24.0,
              //     ),
              //     onPressed: () {
              //       MapUtils.openMap(servicedvilla.latitude, servicedvilla.longitude);
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }
}
