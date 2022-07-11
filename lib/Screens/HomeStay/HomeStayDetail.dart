// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
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
        Homestay.overview.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Overview"),
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Homestay.overview,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
               Homestay.facilities.isNotEmpty ?
              Padding(
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
                            Card(
                              child: Column(
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
                                      TextButton(
                                          onPressed: () async {
                                            final url = 'tel:${Homestay.ph2}';
                                            // final url = 'tel:$stateowned.phone';
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            }
                                          },
                                          child: Text(Homestay.ph2)),
                                      TextButton(
                                          onPressed: () async {
                                            final url = 'tel:${Homestay.ph3}';
                                            // final url = 'tel:$stateowned.phone';
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            }
                                          },
                                          child: Text(Homestay.ph3))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              child: Column(
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
                                      TextButton(
                                          onPressed: () async {
                                            final url =
                                                'mailto:${Homestay.email2}';
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            }
                                          },
                                          child: Text(Homestay.email2)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              child: SingleChildScrollView(
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
                                                  Uri.parse(Homestay.website);
                                              if (await canLaunchUrl(url)) {
                                                await launchUrl(url);
                                              }
                                            },
                                            child: Text(Homestay.website))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                  label: Text('Locate On Map'), // <-- Text
                 // backgroundColor: Colors.teal,
                  icon: Icon(
                    // <-- Icon
                    Icons.location_pin,
                    size: 24.0,
                  ),
                  onPressed: () {
                    MapUtils.openMap(Homestay.latitude, Homestay.longitude);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
