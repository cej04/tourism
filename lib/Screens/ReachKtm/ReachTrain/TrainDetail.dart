import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/Train.dart';
import 'package:ktmtourism/Utils/constants.dart';

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
            child: Text(" Railway Station Kottayam",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: train.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = train[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.train,color: que.iconColor,),
                      title: Text(que.title),
                    
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height:10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Phone :"),
                              Text(que.phone),
                              
                            ],
                          ),
                            SizedBox(height:5.0),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Pincode :"),
                              Text(que.pincode.toString()),
                              
                            ],
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
