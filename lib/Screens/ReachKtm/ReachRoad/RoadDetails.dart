import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/Road.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class RoadDEtails extends StatelessWidget {
  const RoadDEtails({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("K S R T C Bus Stations",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: road.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = road[index];

                  return Card(
                    child: ListTile(
                    //  tileColor: que.bgcolor,
                      leading: Icon(Icons.bus_alert,color: que.iconColor,),
                      title: Text(que.title),
                    
                      subtitle: Column(
                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                             Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Pincode :"),
                              Text(que.pincode.toString()),
                              
                            ],
                          ),
                         
                                TextButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${que.phone}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text(que.phone),
                              
                                ),
                          
                        
                        ],
                      ),
                    
                    ),
                  );
                }),
     
          )
        ],
      ),
    );
  }
}
