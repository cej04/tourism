import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:ktmtourism/Screens/Headers/header_tourisminfo.dart';

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
                            text: 'Deputy Director\n\n',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                            text:
                                'District Office\nDepartment of Tourism\nKavanattinkara\nKumarakom P O\nKottayam :0481-2524343\n\n',
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text:
                                'District Tourism Promotion Council(DTPC)\n\n',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                            text:
                                'DTPC provide constant aid and information to the Visitors.',
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
                                fontWeight: FontWeight.bold),
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
                            text:
                                'District Tourism Promotion Council (DTPC)\nKodimatha, Kottayam\nPh: +91 481 2560479\nEmail :',
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
                                decoration: TextDecoration.underline),
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
                        children: [
                          TextSpan(
                            text: 'Tourist Information Offices\n\n',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                            text:
                                'District Tourism Office,Kottayam,Kumarakom & Tourist Information Counter\n',
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
                            text: 'Ph:2524343\nEmail',
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
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
                          TextSpan(
                            text: ':ddktm@keralatourism.org',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
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
                        children: [
                          TextSpan(
                            text: 'Responsible Tourism Travel Desk  \n\n',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                            text:
                                'Kumarakom\nPh: +91 481 2523097\nMob:9633992977\nEmail : ',
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
                            text:
                                'vlekumarakom@gmail.com ,  rt@keralatourism.org',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
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
                        children: [
                          TextSpan(
                            text: 'KTDC  \n\n',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                            text: 'Kumarakom\nPh: +91 481 2527650\nEmail :',
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
                            text: 'waterscapes@ktdc.com',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
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
                        children: [
                          TextSpan(
                            text: 'Websites\n\n',
                            style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                            text:
                                'District Tourism Promotion Council (DTPC) Kottayam:',
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
                          TextSpan(
                            text: ' www.discoverkottayam.com\n\n',
                            style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                            // recognizer: TapGestureRecognizer()
                            // ..onTap = () async {
                            //   final url = 'https://www.discoverkottayam.com/';
                            //   if (await canLaunch(url)) {
                            //     await launch(
                            //       url,
                            //       forceSafariVC: false,
                            //     );
                            //   }
                            // },
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
                            text:
                                'Department of Tourism, Government of Kerala:',
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
                          TextSpan(
                            text: ' www.keralatourism.org\n\n',
                            style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
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
              ]),
        ));
  }
}
