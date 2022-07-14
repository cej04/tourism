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
              heritage.desc.isNotEmpty
                  ? Padding(
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
                      ))
                  : Container(),
              heritage.reach.isNotEmpty
                  ? Padding(
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
                      ))
                  : Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    textColor: Colors.white,
                    //height: 60.0,
                    color: Colors.teal,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.night_shelter_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Where to Stay',
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    textColor: Colors.white,
                    //height: 60.0,
                    color: Colors.teal,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.pin_drop,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Locate on Map',
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text("Stay", style: Theme.of(context).textTheme.titleSmall),
              //     ],
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: FloatingActionButton.extended(
              //     label: Text('Locate On Map'), // <-- Text
              //     backgroundColor: Colors.teal,
              //     icon: Icon(
              //       // <-- Icon
              //       Icons.location_pin,
              //       size: 24.0,
              //     ),
              //     onPressed: () {
              //       MapUtils.openMap(heritage.latitude, heritage.longitude);
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }
}
