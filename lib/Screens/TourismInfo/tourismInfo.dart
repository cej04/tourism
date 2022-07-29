import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:ktmtourism/Screens/Headers/header_tourisminfo.dart';
import 'package:url_launcher/url_launcher.dart';

class TourismInfoPage extends StatelessWidget {
  const TourismInfoPage({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWithTourismInfo(size: size),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: 
                  Column(
                    children: [
                      Card(
                        child: ListTile(
                          title:Text('Department of Tourism\n\nDeputy Director\n'),
                          subtitle: Column(
                            children: [
                              Text('District Office\nDepartment of Tourism\nKavanattinkara\nKumarakom P O\nKottayam'),
                              //Text('phone:+91481 2524343')
                              // TextButton.icon(
                              //       onPressed: () async {
                              //         final url = 'tel:${'+91481 2524343'}';
            
                              //         if (await canLaunch(url)) {
                              //           await launch(url);
                              //         }
                              //       },
                              //       child: Text('+91481 2524343')),
                                  ElevatedButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${'+91481 2524343'}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text('+91481 2524343'),
                              
                                ),
                            ],

                          ),
                        ),
                      ),
                         Card(
                        child: ListTile(
                          title:Text('District Tourism Promotion Council (DTPC)\n'),
                          subtitle: Text('DTPC provide constant aid and information to the Visitors.'),
                        ),
                      ),
                       Card(
                        child: ListTile(
                          title:Text('The Secretary\n'),
                          subtitle: Column(
                            children: [
                              Text('District Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\n'),
                             ElevatedButton.icon(
                          icon: Icon(Icons.email),
                          label: Text('${'info@dtpckottayam.com'}'),
                          onPressed: () async {
                            final url = 'mailto:${'info@dtpckottayam.com'}';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                        ),
                              ElevatedButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${'+91481 2560479'}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text('+91481 2560479'),
                              
                                ),
                            ],
                          ),
                        ),
                      ),
                       Card(
                        child: ListTile(
                          title:Text('Tourist Information Offices\n'),
                          subtitle: Column(
                            children: [
                              Text('District Tourism Office,Kottayam,Kumarakom & Tourist Information Counter\n'),
                                ElevatedButton.icon(
                          icon: Icon(Icons.email),
                          label: Text('${'ddktm@keralatourism.org'}'),
                          onPressed: () async {
                            final url = 'mailto:${'ddktm@keralatourism.org'}';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                        ),
                               ElevatedButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${'+91481 2524343'}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text('+91481 2524343'),
                              
                                ),
                            ],
                          ),
                        ),
                      ),
                        Card(
                        child: ListTile(
                          title:Text('Responsible Tourism Travel Desk\n'),
                          subtitle: Column(
                            children: [
                              Text('Kumarakom\n'),
                               
                                ElevatedButton.icon(
                          icon: Icon(Icons.email),
                          label: Text('${'vlekumarakom@gmail.com'}'),
                          onPressed: () async {
                            final url = 'mailto:${'vlekumarakom@gmail.com'}';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                        ),
                        ElevatedButton.icon(
                          icon: Icon(Icons.email),
                          label: Text('${'rt@keralatourism.org'}'),
                          onPressed: () async {
                            final url = 'mailto:${'rt@keralatourism.org'}';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                        ),
                               ElevatedButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${'+91481 2523097'}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text('+91481 2523097'),
                              
                                ),
                                  ElevatedButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${'9633992977'}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone_android),
                                    label: Text('9633992977'),
                              
                                ),
                            ],
                          ),
                        ),
                      ),
                       Card(
                        child: ListTile(
                          title:Text('KTDC\n'),
                          subtitle: Column(
                            children: [
                              Text('Kumarakom\n'),
                                ElevatedButton.icon(
                          icon: Icon(Icons.email),
                          label: Text('${'waterscapes@ktdc.com'}'),
                          onPressed: () async {
                            final url = 'mailto:${'waterscapes@ktdc.com'}';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                        ),
                            ElevatedButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${' +91481 2527650'}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text(' +91481 2527650'),
                              
                                ),
                            ],
                          ),
                        ),
                      ),
                       Card(
                        child: ListTile(
                          title:Text('Websites\n'),
                          subtitle: Text('District Tourism Promotion Council (DTPC) Kottayam:www.discoverkottayam.com\n\nDepartment of Tourism, Government of Kerala:www.keralatourism.org\n\n'),
                        ),
                      ),
                    ],
                  )
                  
                ),
             
                          // TextSpan(
                          //   recognizer: new TapGestureRecognizer()..onTap = () async {
                          //           final Uri url = Uri.parse('info@dtpckottayam.com');
                          //           if (await canLaunchUrl(url)) {
                          //             await launchUrl(url);
                          //           }
                          //         },
                          //   text: 'info@dtpckottayam.com',
                          //   style: const TextStyle(
                          //       fontSize: 18.0,
                          //       color: Colors.blue,
                          //       decoration: TextDecoration.underline),
                       
                          // ),
              
  
             
              ]),
        ));
  }
}
