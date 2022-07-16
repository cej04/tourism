import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Kumarakom/Category/Spotlight/Spotlight.dart';
import 'package:ktmtourism/Utils/constants.dart';

class SpotlightDetail extends StatelessWidget {
  const SpotlightDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //  appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),

      //    child: const MyAppBar(),

      // ),
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Spotlights Near Kumarakom",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: spotlight.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = spotlight[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.attractions_rounded,color: que.iconColor,),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(que.name),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text(que.trailing),
                           ),
                        ],
                      ),
                      subtitle:Text(que.description,textAlign: TextAlign.justify,),
                     // trailing: Text(que.trailing),
                    
                    ),
                  );
                }),
     
          )
        ],
      ),
    );
  }
}