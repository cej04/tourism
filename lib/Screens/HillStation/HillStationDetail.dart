// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/HillStation/HillStation.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HillStationDetail extends StatefulWidget {
  final HillStation hillstation;
  const HillStationDetail({Key? key, required this.hillstation})
      : super(key: key);

  @override
  State<HillStationDetail> createState() => _HillStationDetailState();
}

class _HillStationDetailState extends State<HillStationDetail> {
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
                    image: AssetImage(widget.hillstation.image),
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
                              widget.hillstation.name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            widget.hillstation.desc.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpansionTile(
                      initiallyExpanded: true,
          //            collapsedBackgroundColor: Colors.grey[200],
                      title: Text("Description"),

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            widget.hillstation.desc,
                            textAlign: TextAlign.justify,
                            style: TextStyle(height: 1.9),
                          ),
                        ),
                      ],
                      // subtitle: Text(ayurveda.overview),
                    ))
                : Container(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton.icon(
                    icon: Icon(Icons.night_shelter),
                    label: Text('Where to Stay'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        final Uri url = Uri.parse(widget.hillstation.stay);
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
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.location_pin),
                    label: Text('Locate on Map'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        MapUtils.openMap(widget.hillstation.latitude, widget.hillstation.longitude);
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
            
            widget.hillstation.reach.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpansionTile(
            //          collapsedBackgroundColor: Colors.grey[200],
                      title: Text("Getting There"),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            widget.hillstation.reach,
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ],
                    ))
                : Container(),
          ],
        ),
      ),
    );
  }
}


