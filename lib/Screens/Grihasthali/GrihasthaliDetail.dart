// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Grihasthali/Grihasthali.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class GrihasthaliDetail extends StatelessWidget {
  final Grihasthali grihasthali;
  const GrihasthaliDetail({Key? key, required this.grihasthali}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(
            title: 'Grihasthali',
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                      image: AssetImage(grihasthali.image),
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
                                grihasthali.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  grihasthali.address,
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
           
              grihasthali.overview.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Overview"),
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          grihasthali.overview,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
                grihasthali.facilities.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Facilities"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          grihasthali.facilities,
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
              //      grihasthali.treatment.isNotEmpty ?
              // Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ExpansionTile(
              //       collapsedBackgroundColor: Colors.grey[200],
              //       title: Text("Ayurvedic Treatments"),
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Text(
              //             grihasthali.treatment,
              //             textAlign: TextAlign.justify,
              //           ),
              //         )
              //       ],
              //       // subtitle: Text(ayurveda.overview),
              //     )):Container(),
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
                                        final url = 'tel:${grihasthali.ph1}';
                                        // final url = 'tel:$stateowned.phone';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        }
                                      },
                                      child: Text(grihasthali.ph1),
                                    )
                                  ],
                                ),
                             
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   grihasthali.ph2.isNotEmpty ?
                                    TextButton(
                                        onPressed: () async {
                                          final url = 'tel:${grihasthali.ph2}';
                                          // final url = 'tel:$stateowned.phone';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(grihasthali.ph2)):Container(),
                                        grihasthali.ph3.isNotEmpty ?
                                         TextButton(
                                        onPressed: () async {
                                          final url = 'tel:${grihasthali.ph3}';
                                          // final url = 'tel:$stateowned.phone';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(grihasthali.ph3)):Container()
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
                                              'mailto:${grihasthali.email1}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(grihasthali.email1))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     grihasthali.email2.isNotEmpty ?
                                    TextButton(
                                        onPressed: () async {
                                          final url =
                                              'mailto:${grihasthali.email2}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(grihasthali.email2)):Container()
                                  ],
                                ),
                              ],
                            ),
                            grihasthali.website.isNotEmpty ?
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.web,
                                        color: Colors.teal,
                                      ),
                                      TextButton(  onPressed: () async {
                                      final Uri url = Uri.parse(
                                          grihasthali.website);
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    },
                                      child: Text(grihasthali.website))
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
                    MapUtils.openMap(grihasthali.latitude, grihasthali.longitude);
                  },
                ),
              ), 
            ],
          ),
        ));
  }
}
