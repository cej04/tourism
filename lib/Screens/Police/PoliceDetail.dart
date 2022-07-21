import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Police/police.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class PoliceDetail extends StatelessWidget {
  const PoliceDetail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child:  MyAppBar(title: 'Police',),
      ),
      body:  ListView.builder(
          itemCount: police.length,
          itemBuilder: (BuildContext context, int index) {
                              final PoliceDetail = police[index];

            return  Card(
              child: ListTile(
                       
                        leading: 
                        Icon(
                          Icons.local_police_outlined,
                          
                        ),
                        title: Text(PoliceDetail.name),
                        subtitle: Column(
                          children: [
                            
                           
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(""),
                                TextButton(
                                    onPressed: () async {
                                      final url = 'tel:${PoliceDetail.ph1}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    child: Text(PoliceDetail.ph1.toString())),

                                     TextButton(
                                    onPressed: () async {
                                      final url = 'tel:${PoliceDetail.ph2}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    child: Text(PoliceDetail.ph2.toString())),
                              ],
                            ),
                          ],
                        ),
                      ),
            );
          }),
    );
  }
}