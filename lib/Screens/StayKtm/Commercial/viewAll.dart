import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmCard.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmDetailPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';



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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
       
          child: const MyAppBar(),
        
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
