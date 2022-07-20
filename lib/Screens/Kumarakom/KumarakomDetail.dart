import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ktmtourism/Screens/Kumarakom/Details.dart';
import 'package:ktmtourism/Screens/Kumarakom/kumarakom.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class KumarakomDetail extends StatelessWidget {
  final KumaraKom Kumarakom;
  const KumarakomDetail({Key? key, required this.Kumarakom}) : super(key: key);

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
                      image: AssetImage(Kumarakom.image),
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
                                Kumarakom.name,
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

              Kumarakom.desc.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Description"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Kumarakom.desc,
                              textAlign: TextAlign.justify,
                              style: TextStyle(height: 1.9),
                            ),
                          )
                        ],
                        // subtitle: Text(ayurveda.overview),
                      ))
                  : Container(),
              if (Kumarakom.more != 0)
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      collapsedBackgroundColor: Colors.grey[200],
                      title: Text("More About Kumarakom"),
                      children: [
                        ElevatedButton(
                            child: Text(
                              "Explore Kumarakom",
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => details()),
                              );
                            })
                      ],
                      // subtitle: Text(ayurveda.overview),
                    )),

              Kumarakom.activity.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Activities"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Kumarakom.activity,
                              textAlign: TextAlign.left,
                              style: TextStyle(height: 1.9),
                            ),
                          )
                        ],
                        // subtitle: Text(ayurveda.overview),
                      ))
                  : Container(),
              Kumarakom.contact.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Contact Us"),
                        children: [
                          Kumarakom.contact.isNotEmpty
                              ? Column(children: [
                                  
                                      Text(
                                        Kumarakom.contact,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(height: 1.9),
                                      ),
                                  
                                ])
                              : Container(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Kumarakom.ph.isNotEmpty
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.teal,
                                              ),
                                              TextButton(
                                                onPressed: () async {
                                                  final url =
                                                      'tel:${Kumarakom.ph}';
                                                  // final url = 'tel:$stateowned.phone';
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  }
                                                },
                                                child: Text(Kumarakom.ph),
                                              )
                                            ],
                                          )
                                        : Container()
                                  ],
                                ),
                                Kumarakom.email.isNotEmpty
                                    ? Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.email,
                                              color: Colors.teal,
                                            ),
                                            TextButton(
                                                onPressed: () async {
                                                  final url =
                                                      'mailto:${Kumarakom.email}';
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  }
                                                },
                                                child: Text(Kumarakom.email))
                                          ],
                                        ),
                                      ])
                                    : Container(),
                              ],
                            ),
                          ),
                          // )
                        ],
                        // subtitle: Text(ayurveda.overview),
                      ))
                  : Container(),

              
              Kumarakom.reach.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Getting There"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Kumarakom.reach,
                              textAlign: TextAlign.justify,
                              style: TextStyle(height: 1.9),
                            ),
                          )
                        ],
                        // subtitle: Text(ayurveda.overview),
                      ))
                  : Container(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Kumarakom.stay.isNotEmpty
                      ?
                      ElevatedButton.icon(
                    icon: Icon(Icons.night_shelter),
                    label: Text('Where to Stay'),
                    onPressed: () async {
                      if (await InternetConnectionChecker().hasConnection) {
                        final Uri url = Uri.parse(Kumarakom.stay);
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
                  ):

                     
                       Container(),
                  if (Kumarakom.latitude != 0)
                    ElevatedButton.icon(
                      icon: Icon(Icons.location_pin),
                      label: Text('Locate on Map'),
                      onPressed: () async {
                        if (await InternetConnectionChecker().hasConnection) {
                          MapUtils.openMap(
                              Kumarakom.latitude, Kumarakom.longitude);
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
            ],
          ),
        ));
  }
}
