// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/HomeStay/HomeStay.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeStayDetail extends StatelessWidget {
  final HomeStay Homestay;
  const HomeStayDetail({Key? key, required this.Homestay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(
            title: 'Homestay',
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                      image: AssetImage(Homestay.image),
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
                                Homestay.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  Homestay.address,
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
              Homestay.overview.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Overview"),

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Homestay.overview,
                              textAlign: TextAlign.justify,
                              style: TextStyle(height: 1.7),
                            ),
                          ),
                        ],
                        // subtitle: Text(ayurveda.overview),
                      ))
                  : Container(),
              Homestay.facilities.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Facilities"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Homestay.facilities,
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                        // subtitle: Text(ayurveda.overview),
                      ))
                  : Container(),
              
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
                                        final url = 'tel:${Homestay.ph1}';
                                        // final url = 'tel:$stateowned.phone';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        }
                                      },
                                      child: Text(Homestay.ph1),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Homestay.ph2.isNotEmpty
                                        ? TextButton(
                                            onPressed: () async {
                                              final url = 'tel:${Homestay.ph2}';
                                              // final url = 'tel:$stateowned.phone';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              }
                                            },
                                            child: Text(Homestay.ph2))
                                        : Container(),
                                    Homestay.ph3.isNotEmpty
                                        ? TextButton(
                                            onPressed: () async {
                                              final url = 'tel:${Homestay.ph3}';
                                              // final url = 'tel:$stateowned.phone';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              }
                                            },
                                            child: Text(Homestay.ph3))
                                        : Container()
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
                                              'mailto:${Homestay.email1}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(Homestay.email1))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Homestay.email2.isNotEmpty
                                        ? TextButton(
                                            onPressed: () async {
                                              final url =
                                                  'mailto:${Homestay.email2}';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              }
                                            },
                                            child: Text(Homestay.email2))
                                        : Container()
                                  ],
                                ),
                              ],
                            ),
                            Homestay.website.isNotEmpty
                                ? ElevatedButton.icon(
                                    icon: Icon(Icons.web),
                                    label: Text(Homestay.website),
                                    onPressed: () async {
                                      if (await InternetConnectionChecker()
                                          .hasConnection) {
                                        final Uri url =
                                            Uri.parse(Homestay.website);
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
                            // Homestay.website.isNotEmpty
                            //     ? SingleChildScrollView(
                            //         scrollDirection: Axis.horizontal,
                            //         child: Column(
                            //           children: [
                            //             Row(
                            //               mainAxisAlignment:
                            //                   MainAxisAlignment.center,
                            //               children: [
                            //                 Icon(
                            //                   Icons.web,
                            //                   color: Colors.teal,
                            //                 ),
                            //                 TextButton(
                            //                     onPressed: () async {
                            //                       final Uri url = Uri.parse(
                            //                           Homestay.website);
                            //                       if (await canLaunchUrl(url)) {
                            //                         await launchUrl(url);
                            //                       }
                            //                     },
                            //                     child: Text(Homestay.website))
                            //               ],
                            //             ),
                            //           ],
                            //         ),
                            //       )
                            //     : Container()
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
                        MapUtils.openMap(Homestay.latitude, Homestay.longitude);
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
