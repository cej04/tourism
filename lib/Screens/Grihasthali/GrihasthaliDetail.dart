// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
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
                    initiallyExpanded: true,
             //       collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Overview"),
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          grihasthali.overview,
                          textAlign: TextAlign.justify,
                          style: TextStyle(height: 1.7)
                        ),
                      ),
                      
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
                grihasthali.facilities.isNotEmpty ?
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
         //           collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Facilities"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          grihasthali.facilities,
                          textAlign: TextAlign.justify,
                          style: TextStyle(height: 1.7)
                        ),
                      )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  )): Container(),
              
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
            //        collapsedBackgroundColor: Colors.grey[200],
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
                            ElevatedButton.icon(
                              icon: Icon(Icons.web),
                                    label: Text(grihasthali.website),
                                    onPressed: () async {
                                      // hasInternet =
                                      //     await InternetConnectionChecker()
                                      //         .hasConnection;
                                      if (await InternetConnectionChecker()
                                              .hasConnection) {
                                        final Uri url = Uri.parse(
                                            grihasthali.website);
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
                                      };
                                    }
                                    //print('no internet');
                                    )
                            
                            :Container()
                          ],
                        ),
                      ),
                      // )
                    ],
                    // subtitle: Text(ayurveda.overview),
                  ),),
                  ElevatedButton.icon(
                    icon: Icon(Icons.location_pin),
                    label: Text('Locate on Map'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        MapUtils.openMap(grihasthali.latitude, grihasthali.longitude);
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
