import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/FerryTiming/FerryTimimg.dart';
import 'package:ktmtourism/Utils/constants.dart';

class FerryTimingDetail extends StatelessWidget {
  const FerryTimingDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //  appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),

      //     child: const MyAppBar(),

      // ),
      body: 
        Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Ferry Timing",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: ferrytiming.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = ferrytiming[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.alarm,color: que.iconColor,),
                     
                      subtitle: Text(que.description)
                    
                    ),
                  );
                }),
     
          )
        ],
      ),
      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(kDefaultPadding),
      //       child: Text("Ferry Timing",style: Theme.of(context).textTheme.headline6?.copyWith(
      //           color: Colors.black, fontWeight: FontWeight.bold,)),
      //     ),
      //     // HeaderWithRestaurant(size: size),
      //     Expanded(
      //         child: ListView.builder(
      //             itemCount: ferrytiming.length,
      //             itemBuilder: (context, index) => FerryTimingCard(
      //                 ferrytiming: ferrytiming[index], press: () {})))
      //   ],
      // ),
    );
  }
}
