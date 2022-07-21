import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:ktmtourism/Utils/constants.dart';

import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class PilgrimsBodyPage extends StatelessWidget {
  final Pilgrims pilgrims;
  const PilgrimsBodyPage({Key? key, required this.pilgrims}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
                Stack(
                  children: [
                    Ink.image(
                        image: AssetImage(pilgrims.image),
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
                                  pilgrims.title,
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
                pilgrims.description.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpansionTile(
                          initiallyExpanded: true,
           //               collapsedBackgroundColor: Colors.grey[200],
                          title: Text("Description"),
      
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                pilgrims.description,
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
                          final Uri url = Uri.parse(pilgrims.stay);
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
                          MapUtils.openMap(pilgrims.lat, pilgrims.long);
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
                pilgrims.reach.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpansionTile(
             //             collapsedBackgroundColor: Colors.grey[200],
                          title: Text("Getting There"),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                pilgrims.reach,
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ))
                    : Container(),
              ],
          // children: [
          //   Padding(
          //     padding: const EdgeInsets.all(kDefaultPadding),
          //     child: Container(
          //       child: Text(pilgrims.title,
          //           style: Theme.of(context).textTheme.headline6?.copyWith(
          //               color: Colors.black,)),
          //     ),
          //   ),
          //   Container(
          //     height: 200,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black,
          //           blurRadius: 6.0,
          //         ),
          //       ],
               
          //       image: DecorationImage(
          //         image: AssetImage(pilgrims.image),
          //         fit: BoxFit.fill,
      
                  
          //       ),
          //     ),
          //   ),
          //   GestureDetector(
          //     onTap: () {
          //       MapUtils.openMap(pilgrims.lat, pilgrims.long);
          //     },
          //     child: Container(
      
          //         height: MediaQuery.of(context).size.height / 14.5,
              
          //         child: Image.asset(
          //           'assets/images/location1.png',
          //           fit: BoxFit.fill,
          //         )),
          //   ),
          //   Expanded(
          //     child: ListView(
          //       children: [
          //         SizedBox(
          //           height: 10,
          //         ),
      
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             child: Padding(
          //                 padding: const EdgeInsets.all(kDefaultPadding),
          //                 child: ReadMoreText(pilgrims.description,
          //                     textAlign: TextAlign.justify,
          //                     style: Theme.of(context)
          //                         .textTheme
          //                         .bodyText2
          //                         ?.apply(
          //                           color: Colors.black,
          //                         )
          //                         .copyWith(height: 1.8),
          //                     trimLines: 20,
          //                     colorClickableText: Colors.blue,
          //                     trimMode: TrimMode.Line,
          //                     trimCollapsedText: 'Read more',
          //                     trimExpandedText: 'Show less',
          //                     moreStyle: TextStyle(
          //                         fontSize: 16,
          //                         fontWeight: FontWeight.bold,
          //                         color: Colors.blue),
          //                     lessStyle: TextStyle(
          //                         fontSize: 16,
          //                         fontWeight: FontWeight.bold,
          //                         color: Colors.blue))
                     
          //                 ),
          //           ),
          //         ),
          
      
              
          //       ],
          //     ),
          //   ),
         
          // ],
        ),
      ),
     
    );
  }
}
