import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_EmergencyContact.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

// class EmergencyPage extends StatelessWidget {
//   const EmergencyPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight),
//           child: const MyAppBar(title: 'Kottayam tourism',),
//         ),
//         body: SingleChildScrollView(
//           child: Column(children: [
//             HeaderWithEmergencyContact(size: size),
//             Padding(
//               padding: const EdgeInsets.all(kDefaultPadding),
//               child: Container(
//                 child: RichText(
//                   text: TextSpan(
//                     // text: 'The Secretary\nDistrict Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail : ',
//                     // style: const TextStyle(
//                     //   fontSize: 14.0,
//                     //   color: Colors.black,
//                     // ),
//                     children: [
//                       TextSpan(
//                         text:
//                             'ISD Code of India : +91\nSTD Code Kottayam : 0481\n\n',
//                         style: const TextStyle(
//                             fontSize: 18.0,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold),
//                         // recognizer: TapGestureRecognizer()
//                         //   ..onTap = () {
//                         //     Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //         builder: (context) => const AnotherRicTextPage(),
//                         //       ),
//                         //     );
//                         // },
//                       ),
//                       TextSpan(
//                         text:
//                             'Police - 100\nFire - 101\nAmbulance - 102\nCitizens Call Center - 155300\nChild Helpline - 1098\nWomen Helpline - 1091\n Disaster Management - 1077(Collectorate),1070(State Control Room)\nAarogya Setu - 1921',
//                         style: const TextStyle(
//                           fontSize: 16.0,
//                           color: Colors.black,
//                         ),
//                         // recognizer: TapGestureRecognizer()
//                         //   ..onTap = () {
//                         //     Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //         builder: (context) => const AnotherRicTextPage(),
//                         //       ),
//                         //     );
//                         //  },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(kDefaultPadding),
//               child: Container(
//                 child: RichText(
//                   text: TextSpan(
//                     // text: 'The Secretary\nDistrict Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail : ',
//                     // style: const TextStyle(
//                     //   fontSize: 14.0,
//                     //   color: Colors.black,
//                     // ),
//                     children: [
//                       TextSpan(
//                         text: 'The Secretary\n\n',
//                         style: const TextStyle(
//                             fontSize: 18.0,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold),
//                         // recognizer: TapGestureRecognizer()
//                         //   ..onTap = () {
//                         //     Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //         builder: (context) => const AnotherRicTextPage(),
//                         //       ),
//                         //     );
//                         // },
//                       ),
//                       TextSpan(
//                         text:
//                             'District Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail :',
//                         style: const TextStyle(
//                           fontSize: 18.0,
//                           color: Colors.black,
//                         ),
//                         // recognizer: TapGestureRecognizer()
//                         //   ..onTap = () {
//                         //     Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //         builder: (context) => const AnotherRicTextPage(),
//                         //       ),
//                         //     );
//                         //  },
//                       ),
//                       TextSpan(
//                         text: 'info@dtpckottayam.com',
//                         style: const TextStyle(
//                             fontSize: 18.0,
//                             color: Colors.blue,
//                             decoration: TextDecoration.underline),
//                         //          GestureDetector(
//                         //   onTap: () {},
//                         //   child: RichText(
//                         //     text: const TextSpan(
//                         //       text: 'Share',
//                         //       style: TextStyle(
//                         //         fontSize: 40.0,
//                         //         color: Colors.green,
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(kDefaultPadding),
//               child: Container(
//                 child: RichText(
//                   text: TextSpan(

//                       // text: 'The Secretary\nDistrict Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail : ',
//                       // style: const TextStyle(
//                       //   fontSize: 14.0,
//                       //   color: Colors.black,
//                       // ),
//                       // children: [

//                       //   TextSpan(
//                       //     text: 'Websites\n\n',
//                       //     style: const TextStyle(
//                       //       fontSize: 18.0,
//                       //       color: Colors.black,
//                       //       fontWeight: FontWeight.bold
//                       //     ),
//                       //     // recognizer: TapGestureRecognizer()
//                       //     //   ..onTap = () {
//                       //     //     Navigator.push(
//                       //     //       context,
//                       //     //       MaterialPageRoute(
//                       //     //         builder: (context) => const AnotherRicTextPage(),
//                       //     //       ),
//                       //     //     );
//                       //      // },
//                       //   ),
//                       //   TextSpan(
//                       //     text: 'District Tourism Promotion Council (DTPC) Kottayam:',
//                       //     style: const TextStyle(
//                       //       fontSize: 16.0,
//                       //       color: Colors.black,

//                       //     ),
//                       //     // recognizer: TapGestureRecognizer()
//                       //     //   ..onTap = () {
//                       //     //     Navigator.push(
//                       //     //       context,
//                       //     //       MaterialPageRoute(
//                       //     //         builder: (context) => const AnotherRicTextPage(),
//                       //     //       ),
//                       //     //     );
//                       //     //  },
//                       //   ),
//                       //    TextSpan(
//                       //     text: ' www.discoverkottayam.com\n\n',
//                       //     style: const TextStyle(
//                       //       fontSize: 16.0,
//                       //       color: Colors.blue,
//                       //        decoration: TextDecoration.underline

//                       //     ),
//                       //     // recognizer: TapGestureRecognizer()
//                       //     // ..onTap = () async {
//                       //     //   final url = 'https://www.discoverkottayam.com/';
//                       //     //   if (await canLaunch(url)) {
//                       //     //     await launch(
//                       //     //       url,
//                       //     //       forceSafariVC: false,
//                       //     //     );
//                       //     //   }
//                       //     // },
//                       //     // recognizer: TapGestureRecognizer()
//                       //     //   ..onTap = () {
//                       //     //     Navigator.push(
//                       //     //       context,
//                       //     //       MaterialPageRoute(
//                       //     //         builder: (context) => const AnotherRicTextPage(),
//                       //     //       ),
//                       //     //     );
//                       //     //  },
//                       //   ),
//                       //   TextSpan(
//                       //     text: 'Department of Tourism, Government of Kerala:',
//                       //     style: const TextStyle(
//                       //       fontSize: 16.0,
//                       //       color: Colors.black,

//                       //     ),
//                       //     // recognizer: TapGestureRecognizer()
//                       //     //   ..onTap = () {
//                       //     //     Navigator.push(
//                       //     //       context,
//                       //     //       MaterialPageRoute(
//                       //     //         builder: (context) => const AnotherRicTextPage(),
//                       //     //       ),
//                       //     //     );
//                       //     //  },
//                       //   ),
//                       //    TextSpan(
//                       //     text: ' www.keralatourism.org\n\n',
//                       //     style: const TextStyle(
//                       //       fontSize: 16.0,
//                       //       color: Colors.blue,
//                       //       decoration: TextDecoration.underline

//                       //     ),
//                       //     // recognizer: TapGestureRecognizer()
//                       //     //   ..onTap = () {
//                       //     //     Navigator.push(
//                       //     //       context,
//                       //     //       MaterialPageRoute(
//                       //     //         builder: (context) => const AnotherRicTextPage(),
//                       //     //       ),
//                       //     //     );
//                       //     //  },
//                       //   ),

//                       // ],
//                       ),
//                 ),
//               ),
//             ),
//           ]),
//         ));
//   }
// }
class EmergencyPage extends StatefulWidget {  
  @override  
  _TableExample createState() => _TableExample();  
}  
  
class _TableExample extends State<EmergencyPage> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
         appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(title: 'Kottayam Tourism',),
        ),  
          body:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Center(  
                child: Column(children: <Widget>[  
                  Container(  
                    margin: EdgeInsets.all(20),  
                    child: Table(  
                      //defaultColumnWidth: FixedColumnWidth(120.0),  
                      border: TableBorder.all(  
                       
                          style: BorderStyle.solid,  
                          
                          width: 2),  
                      children: [  
                        
                        TableRow( children: [  
                          Column(children:[Text('Police station')]),  
                          Column(children:[ TextButton(
              child: Text( "100", ),
              onPressed:  () async {
                                      final url = 'tel:${100}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),]),  
                         
                        ]),  
                        TableRow( children: [  
                          Column(children:[Text('Police Helpline')]),  
                          Column(children:[Text('0471-324 3000/4000/5000')]),  
                            
                        ]),  
                        TableRow( children: [  
                          Column(children:[Text('Police Message Centre')]),  
                          Column(children:[Text('94 97 900000')]),  
                          
                        ]), 
                         TableRow( children: [  
                          Column(children:[Text('Police High Way Help Line')]),  
                          Column(children:[Text('9846 100 100')]),  
                          
                        ]),
                        TableRow( children: [  
                          Column(children:[Text('Centralized Helpline Number')]),  
                          Column(children:[TextButton(
              child: Text( "112", ),
              onPressed:  () async {
                                      final url = 'tel:${112}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),]),  
                          
                        ]), 
                         TableRow( children: [  
                          Column(children:[Text('Fire Station')]),  
                          Column(children:[TextButton(
              child: Text( "101", ),
              onPressed:  () async {
                                      final url = 'tel:${101}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),]),  
                          
                        ]),  
                          TableRow( children: [  
                          Column(children:[Text('Ambulance')]),  
                          Column(children:[TextButton(
              child: Text( "108", ),
              onPressed:  () async {
                                      final url = 'tel:${108}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),]),  
                          
                        ]), 
                           TableRow( children: [  
                          Column(children:[Text('Women Helpline')]),  
                          Column(children:[Text('1091 , 181')]),  
                          
                        ]),  
                         TableRow( children: [  
                          Column(children:[Text('Crime Stopper')]),  
                          Column(children:[TextButton(
              child: Text( "1090", ),
              onPressed:  () async {
                                      final url = 'tel:${1090}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),]),  
                          
                        ]),  
                         TableRow( children: [  
                          Column(children:[Text('Child Helpline')]),  
                          Column(children:[TextButton(
              child: Text( "1098", ),
              onPressed:  () async {
                                      final url = 'tel:${1098}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),]),  
                          
                        ]),
                        TableRow( children: [  
                          Column(children:[Text('Highway Alert ')]),  
                          Column(children:[
                            TextButton(
              child: Text( "9846100100", ),
              onPressed:  () async {
                                      final url = 'tel:${9846100100}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),
                            
                      
                            
                            
                            ]),  
                          
                        ]),
                         TableRow( children: [  
                          Column(children:[Text('Railway Alert ')]),  
                          Column(children:[
                             TextButton(
              child: Text( "9846200100", ),
              onPressed:  () async {
                                      final url = 'tel:${9846200100}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),
                      
                            ]),  
                          
                        ]),
                          TableRow( children: [  
                          Column(children:[Text('Flood / Disaster Helpline ')]),  
                          Column(children:[
                            
                            Text('1070 , 1077')
                            
                            ]),  
                          
                        ]),
                         TableRow( children: [  
                          Column(children:[Text('Anti Ragging Helpline ')]),  
                          Column(children:[Text('1800 180 5522 ')]),  
                          
                        ]),
                        TableRow( children: [  
                          Column(children:[Text('DISHA Helpline ( Health ) ')]),  
                          Column(children:[
                            
                            
                           TextButton(
              child: Text( "1056", ),
              onPressed:  () async {
                                      final url = 'tel:${1056}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),
                            ]),  
                          
                        ]),
                         TableRow( children: [  
                          Column(children:[Text('Government Contact Centre-Kerala (Citizens Call Centre) ')]),  
                          Column(children:[Text('0471-155300,0471- 2335523   ')]),  
                          
                        ]),
                         TableRow( children: [  
                          Column(children:[Text('Water Supply Authority ')]),  
                          Column(children:[Text('0484 253 0844   ')]),  
                          
                        ]),
                        TableRow( children: [  
                          Column(children:[Text('Electricity Helpline')]),  
                          Column(children:[ TextButton(
              child: Text( "1912", ),
              onPressed:  () async {
                                      final url = 'tel:${1912}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
             
            ),]),  
                          
                        ]),
                      ],  
                    ),  
                  ),  
                ])  
            ),
          ) 
    );  
  }  
}  