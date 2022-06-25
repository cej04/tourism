import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmDetailPage.dart';

class StateOwnedPage extends StatefulWidget {
  const StateOwnedPage({Key? key}) : super(key: key);

  @override
  _StateOwnedPageState createState() => _StateOwnedPageState();
}

class _StateOwnedPageState extends State<StateOwnedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double cardWidth = MediaQuery.of(context).size.width / 4;
    double cardHeight = MediaQuery.of(context).size.height / 4;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
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
              ),
            ),
            Text(
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
          ],
        ),
        actions: [],
      ),
      body: Column(
        children: [
          // HeaderWithCommercial(size: size),
          // Expanded(
          //   child: GridView.builder(
          //       padding: const EdgeInsets.all(20),
          //       itemCount: commercial.length,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         // mainAxisSpacing: kDefaultPadding,
          //         crossAxisSpacing: 10,
          //         mainAxisSpacing: 10,
          //         // childAspectRatio: 0.75,
          //       ),
          //       itemBuilder: (context, index) => WelcomeKtmCard(
          //             welcome: welcome[index],
          //             press: () => Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => WelcomeKtmDetailsPage(
          //                   welcome: welcome[index],
          //                 ),
          //               ),
          //             ),
          //           )),
          // )
        ],
      ),
      //    Container(
      //       child: Column(
      //     children: [
      //       HeaderWithWelcome(size: size),

      //       // Container(
      //       //   width: double.infinity,
      //       //   //height:150,
      //       //   decoration: const BoxDecoration(
      //       //     image: DecorationImage(
      //       //         image: AssetImage("assets/images/welcome.jpg"),
      //       //         fit: BoxFit.cover),
      //       //   ),
      //       //   child: Column(
      //       //     mainAxisAlignment: MainAxisAlignment.center,
      //       //     children: [
      //       //       const SizedBox(
      //       //         height: 70,
      //       //       ),
      //       //       Container(
      //       //         height: 30,
      //       //         decoration: const BoxDecoration(),
      //       //         child:
      //       //         const Center(
      //       //             child: Text("Welcome  Kottayam",
      //       //                 style: TextStyle(
      //       //                     fontWeight: FontWeight.bold,
      //       //                     fontSize: 24.0,
      //       //                     color: Colors.white))),
      //       //       ),
      //       //     ],
      //       //   ),
      //       // ),
      //       const SizedBox(height: 5),
      //       Expanded(
      //         child: GridView.count(
      //             crossAxisCount: 2,
      //             padding: const EdgeInsets.all(20),
      //             crossAxisSpacing: 10,
      //             mainAxisSpacing: 10,
      //             children: [
      //               ...images.map((item) => Column(
      //                     mainAxisSize: MainAxisSize.max,
      //                     children: [

      //                       Expanded(
      //                         child: Container(
      //                          decoration: BoxDecoration(
      // //                              border: Border.all(
      // //  // color: Colors.green,
      // //  // width: 1,
      // // ),
      // boxShadow: [
      //   BoxShadow(
      //   color: Colors.grey,
      //  blurRadius: 6.0,
      // ),
      // ]
      //                           ),

      //                           child: Image.asset(
      //                             item.first,
      //                             fit: BoxFit.cover,
      //                             // height: 150,
      //                             // width: 150,
      //                           ),
      //                         ),
      //                       ),
      //                           Container(

      //                             child:
      //                             // Text.rich(TextSpan(
      //                             //   text: item.last
      //                             // ))
      //                             Text(

      //                               item.last,
      //                               overflow: TextOverflow.visible,
      //                               softWrap: false,
      //                               style: TextStyle(
      //                                   fontWeight: FontWeight.bold,
      //                                   fontSize: 14),
      //                             ),
      //                           ),
      //                     ],
      //                   ))
      //             ]),
      //       ),
      //     ],
      //   )),
    );
  }
}
