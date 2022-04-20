import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmCard.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmDetailPage.dart';



class CommercialPage extends StatefulWidget {
  const CommercialPage({Key? key}) : super(key: key);

  @override
  _CommercialPageState createState() => _CommercialPageState();
}

class _CommercialPageState extends State<CommercialPage> {
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
            Text("Kottayam Tourism",style: TextStyle(color:Colors.black),),
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
        actions: const [],
      ),
      body:
       Column(
        children: [
           // HeaderWithCommercial(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: commercial.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => WelcomeKtmCard(
              welcome: welcome[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => WelcomeKtmDetailsPage(
                     welcome:welcome[index],
                     ),
                     ),
               ),
            )
            ),
            )
        ],
      ),
    
    );
  }
}
