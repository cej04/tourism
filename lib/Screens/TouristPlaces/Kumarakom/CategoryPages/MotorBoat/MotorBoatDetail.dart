import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/MotorBoat/MotorBoat.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MotorBoatDetail extends StatelessWidget {
  const MotorBoatDetail({
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
            child: Text("Motorboat Operators",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: motorboat.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = motorboat[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.sailing_sharp,color: que.iconColor,),
                      title: Text(que.title),
                      subtitle: Column(
                        children: [
                           SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Phone :"),
                              TextButton(onPressed: () async {
                          final url = 'tel:${que.phone}';
                          // final url = 'tel:$stateowned.phone';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                              child: Text(que.phone)),
                            ],
                          ),
                            SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Rate :"),
                              Text(que.tariff),
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
