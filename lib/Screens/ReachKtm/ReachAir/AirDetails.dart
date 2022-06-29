import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/Air.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AirDetailPage extends StatelessWidget {
  const AirDetailPage({
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
            child: Text("Nearest airport is Cochin International Airport, Ernakulam District (90 Km)\n\nTrivandrum International Airport, Thiruvananthapuram District (160 Km)",),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: air.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = air[index];

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
                              Text("Website :"),
                              TextButton(onPressed: () async {
                                      final Uri url = Uri.parse(
                                          que.weblink);
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    },
                              child: Text(que.weblink)),
                              
                            ],
                          ),
                            SizedBox(height:5.0),
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
