// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/Resort/resort.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ResortDetail extends StatelessWidget {
  final Resort resort;
  const ResortDetail({Key? key, required this.resort}) : super(key: key);

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
                      image: AssetImage(resort.image),
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
                                resort.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  resort.address,
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
              resort.overview.isNotEmpty
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
                              resort.overview,
                              textAlign: TextAlign.justify,
                              style: TextStyle(height: 1.7),
                            ),
                          ),
                        ],
                        // subtitle: Text(ResortDetail.overview),
                      ))
                  : Container(),
              resort.facilities.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Facilities"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              resort.facilities,
                              textAlign: TextAlign.justify,
                              style: TextStyle(height: 1.7),
                            ),
                          )
                        ],
                        // subtitle: Text(ResortDetail.overview),
                      ))
                  : Container(),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey[200],
                    title: Text("Contact Us"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                        final url = 'tel:${resort.ph1}';
                                        // final url = 'tel:$stateowned.phone';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        }
                                      },
                                      child: Text(resort.ph1),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    resort.ph2.isNotEmpty
                                        ? TextButton(
                                            onPressed: () async {
                                              final url = 'tel:${resort.ph2}';
                                              // final url = 'tel:$stateowned.phone';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              }
                                            },
                                            child: Text(resort.ph2))
                                        : Container(),
                                    resort.ph3.isNotEmpty
                                        ? TextButton(
                                            onPressed: () async {
                                              final url = 'tel:${resort.ph3}';
                                              // final url = 'tel:$stateowned.phone';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              }
                                            },
                                            child: Text(resort.ph3))
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
                                          final url = 'mailto:${resort.email1}';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          }
                                        },
                                        child: Text(resort.email1))
                                  ],
                                ),
                                resort.email2.isNotEmpty
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextButton(
                                              onPressed: () async {
                                                final url =
                                                    'mailto:${resort.email2}';
                                                if (await canLaunch(url)) {
                                                  await launch(url);
                                                }
                                              },
                                              child: Text(resort.email2)),
                                        ],
                                      )
                                    : Container()
                              ],
                            ),
                            resort.website.isNotEmpty
                                ? ElevatedButton.icon(
                                    icon: Icon(Icons.web),
                                    label: Text(resort.website),
                                    onPressed: () async {
                                      if (await InternetConnectionChecker()
                                          .hasConnection) {
                                        final Uri url =
                                            Uri.parse(resort.website);
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
                          ],
                        ),
                      ),
                      // )
                    ],
                    // subtitle: Text(ResortDetail.overview),
                  )),
              ElevatedButton.icon(
                icon: Icon(Icons.location_pin),
                label: Text('Locate on Map'),
                onPressed: () async {
                  if (await InternetConnectionChecker().hasConnection) {
                    MapUtils.openMap(resort.latitude, resort.longitude);
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
