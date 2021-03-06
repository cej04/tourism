// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/Destination/Destination.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DestinationDetail extends StatefulWidget {
  final Destination destination;
  const DestinationDetail({Key? key, required this.destination}) : super(key: key);

  @override
  State<DestinationDetail> createState() => _DestinationDetailState();
}

class _DestinationDetailState extends State<DestinationDetail> {
 
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  num _stackToView = 1;

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }
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
                      image: AssetImage(widget.destination.image),
                      width: double.infinity,
                      height: 300,
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
                                widget.destination.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              widget.destination.desc.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        initiallyExpanded: true,
      //                  collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Description"),

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              widget.destination.desc,
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
                    widget.destination.stay.isNotEmpty ?
                  ElevatedButton.icon(
                    icon: Icon(Icons.night_shelter),
                    label: Text('Where to Stay'),
                    onPressed: (){

                    WebView(
                  initialUrl: widget.destination.stay,
                  javascriptMode: JavascriptMode.unrestricted,
                  onPageFinished: _handleLoad,
                  onWebViewCreated: (WebViewController webViewController) {
                    _controller.complete(webViewController);
                  },
                );

                    }
                    
                    //  async {
                    //   if (await InternetConnectionChecker().hasConnection) {
                    //     final Uri url = Uri.parse(destination.stay);
                    //     if (await canLaunchUrl(url)) {
                    //       await launchUrl(url);
                    //     }
                    //   } else {
                    //     showDialog(
                    //       context: context,
                    //       builder: (BuildContext context) {
                    //         return AlertDialog(
                    //           title: Text('No Internet!'),
                    //           content: Text(
                    //               'Internet is required for this action.  Retry after enabling the Connection'),
                    //           actions: [
                    //             TextButton(
                    //                 onPressed: () {
                    //                   Navigator.pop(context);
                    //                 },
                    //                 child: Text('Ok'))
                    //           ],
                    //         );
                    //       },
                    //     );
                    //   }
                    //   ;
                    // },
                  ):Container(),
                       if (widget.destination.latitude != 0)
                  ElevatedButton.icon(
                    icon: Icon(Icons.location_pin),
                    label: Text('Locate on Map'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        MapUtils.openMap(widget.destination.latitude, widget.destination.longitude);
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
                ],
              ),
              widget.destination.reach.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
          //              collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Getting There"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.destination.reach,
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ))
                  : Container(),
            ],
          ),
        ));
  }
}
