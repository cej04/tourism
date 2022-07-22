import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/Train.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class TrainDetailPage extends StatelessWidget {
  const TrainDetailPage({
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
            child: Text(" Railway Station Kottayam",),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: train.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = train[index];

                  return Card(
                    child: ListTile(
                     // tileColor: que.bgcolor,
                      leading: Icon(Icons.train,color: que.iconColor,),
                      title: Text(que.title),
                    
                      subtitle: Column(
                        children: [
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Pincode :"),
                              Text(que.pincode.toString()),
                              
                            ],
                          ),
                          SizedBox(height:10.0),
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
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          //     Text("Phone :"),
                          //     Text(que.phone),
                              
                          //   ],
                          // ),
                          
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
