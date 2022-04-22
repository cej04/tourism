import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_EmergencyContact.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:ktmtourism/Screens/Headers/header_tourisminfo.dart';



class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Row(children: [
            Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                  ),
                  onPressed: () {
                    //  PopupMenuButton(
                    //     itemBuilder: (context) => [
                    //       PopupMenuItem(
                    //         child: Text("First"),
                    //         value: 1,
                    //       ),
                    //       PopupMenuItem(
                    //         child: Text("Second"),
                    //         value: 2,
                    //       )
                    //     ]
                    // );
                  },
                )),
            const Text(
              "Kottayam Tourism",
              style: TextStyle(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/APPlogo2.png",
                    fit: BoxFit.cover,
                    // width: 70.0,
                    // height: 70.0,
                  )),
            ),
          ]),
        ),
        body: Column(children: [
          HeaderWithEmergencyContact(size: size),
          Padding(
             padding: const EdgeInsets.all(kDefaultPadding),
             child: Container(
              child: RichText(
              text: TextSpan(
              
              // text: 'The Secretary\nDistrict Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail : ',
              // style: const TextStyle(
              //   fontSize: 14.0,
              //   color: Colors.black,
              // ),
              children: [
                
                TextSpan(
                  text: 'ISD Code of India : +91\n\n',
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  // recognizer: TapGestureRecognizer()
                  //   ..onTap = () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const AnotherRicTextPage(),
                  //       ),
                  //     );
                   // },
                ),
                TextSpan(
                  text: 'Police - 100\nFire - 101\nAmbulance - 102\nCitizens Call Center - 155300\nChild Helpline - 1098\nWomen Helpline - 1091\n Disaster Management - 1077(Collectorate),1070(State Control Room)\nArogya Setu - 1921',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  
                  ),
                  // recognizer: TapGestureRecognizer()
                  //   ..onTap = () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const AnotherRicTextPage(),
                  //       ),
                  //     );
                  //  },
                ),
                
              ],
              ),
                     ),
                     ),
           ),
        
           Padding(
             padding: const EdgeInsets.all(kDefaultPadding),
             child: Container(
              child: RichText(
              text: TextSpan(
              
              // text: 'The Secretary\nDistrict Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail : ',
              // style: const TextStyle(
              //   fontSize: 14.0,
              //   color: Colors.black,
              // ),
              children: [
                
                TextSpan(
                  text: 'The Secretary\n\n',
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  // recognizer: TapGestureRecognizer()
                  //   ..onTap = () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const AnotherRicTextPage(),
                  //       ),
                  //     );
                   // },
                ),
                TextSpan(
                  text: 'District Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail :',
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  
                  ),
                  // recognizer: TapGestureRecognizer()
                  //   ..onTap = () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const AnotherRicTextPage(),
                  //       ),
                  //     );
                  //  },
                ),
                  TextSpan(
                  text: 'info@dtpckottayam.com',
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                     decoration: TextDecoration.underline
                    
                  
                  ),
          //          GestureDetector(
          //   onTap: () {},
          //   child: RichText(
          //     text: const TextSpan(
          //       text: 'Share',
          //       style: TextStyle(
          //         fontSize: 40.0,
          //         color: Colors.green,
          //       ),
          //     ),
          //   ),
          // ),
                 
                ),
              ],
              ),
          ),
          ),
           ),
            Padding(
             padding: const EdgeInsets.all(kDefaultPadding),
             child: Container(
              child: RichText(
              text: TextSpan(
              
              // text: 'The Secretary\nDistrict Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail : ',
              // style: const TextStyle(
              //   fontSize: 14.0,
              //   color: Colors.black,
              // ),
              // children: [
                
              //   TextSpan(
              //     text: 'Websites\n\n',
              //     style: const TextStyle(
              //       fontSize: 18.0,
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold
              //     ),
              //     // recognizer: TapGestureRecognizer()
              //     //   ..onTap = () {
              //     //     Navigator.push(
              //     //       context,
              //     //       MaterialPageRoute(
              //     //         builder: (context) => const AnotherRicTextPage(),
              //     //       ),
              //     //     );
              //      // },
              //   ),
              //   TextSpan(
              //     text: 'District Tourism Promotion Council (DTPC) Kottayam:',
              //     style: const TextStyle(
              //       fontSize: 16.0,
              //       color: Colors.black,
                  
              //     ),
              //     // recognizer: TapGestureRecognizer()
              //     //   ..onTap = () {
              //     //     Navigator.push(
              //     //       context,
              //     //       MaterialPageRoute(
              //     //         builder: (context) => const AnotherRicTextPage(),
              //     //       ),
              //     //     );
              //     //  },
              //   ),
              //    TextSpan(
              //     text: ' www.discoverkottayam.com\n\n',
              //     style: const TextStyle(
              //       fontSize: 16.0,
              //       color: Colors.blue,
              //        decoration: TextDecoration.underline
                  
              //     ),
              //     // recognizer: TapGestureRecognizer()
              //     // ..onTap = () async {
              //     //   final url = 'https://www.discoverkottayam.com/';
              //     //   if (await canLaunch(url)) {
              //     //     await launch(
              //     //       url,
              //     //       forceSafariVC: false,
              //     //     );
              //     //   }
              //     // },
              //     // recognizer: TapGestureRecognizer()
              //     //   ..onTap = () {
              //     //     Navigator.push(
              //     //       context,
              //     //       MaterialPageRoute(
              //     //         builder: (context) => const AnotherRicTextPage(),
              //     //       ),
              //     //     );
              //     //  },
              //   ),
              //   TextSpan(
              //     text: 'Department of Tourism, Government of Kerala:',
              //     style: const TextStyle(
              //       fontSize: 16.0,
              //       color: Colors.black,
                  
              //     ),
              //     // recognizer: TapGestureRecognizer()
              //     //   ..onTap = () {
              //     //     Navigator.push(
              //     //       context,
              //     //       MaterialPageRoute(
              //     //         builder: (context) => const AnotherRicTextPage(),
              //     //       ),
              //     //     );
              //     //  },
              //   ),
              //    TextSpan(
              //     text: ' www.keralatourism.org\n\n',
              //     style: const TextStyle(
              //       fontSize: 16.0,
              //       color: Colors.blue,
              //       decoration: TextDecoration.underline
                  
              //     ),
              //     // recognizer: TapGestureRecognizer()
              //     //   ..onTap = () {
              //     //     Navigator.push(
              //     //       context,
              //     //       MaterialPageRoute(
              //     //         builder: (context) => const AnotherRicTextPage(),
              //     //       ),
              //     //     );
              //     //  },
              //   ),
                
                
              // ],
              ),
          ),
          ),
           ),
        ]
        )
        
        );
      

  }
}
