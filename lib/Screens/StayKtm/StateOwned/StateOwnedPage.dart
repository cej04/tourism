import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_stateOwned.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnedDetail.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnesCard.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';




class StateOwnedPage extends StatefulWidget {
  const StateOwnedPage({Key? key}) : super(key: key);

  @override
  _StateOwnedPageState createState() => _StateOwnedPageState();
}

class _StateOwnedPageState extends State<StateOwnedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
       
          child: const MyAppBar(),
        
      ),
      body:
       Column(
        children: [
           HeaderWithStateOwned(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: stateowned.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => StateOwnedCard(
              stateowned: stateowned[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => StateOwnedDetailsPage(
                     stateowned:stateowned[index],
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
