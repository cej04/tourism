import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/GovHos/GovHos.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class GovDetail extends StatelessWidget {
  const GovDetail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Government Hospitals',),
      ),
      body:  ListView.builder(
          itemCount: govhos.length,
          itemBuilder: (BuildContext context, int index) {
                              final GovDetail = govhos[index];

            return  Card(
              child: ListTile(
                       
                        leading: Icon(
                          Icons.local_hospital,
                          
                        ),
                        title: Text(GovDetail.name),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           
                           
                                TextButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${GovDetail.ph1}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text(GovDetail.ph2),
                              
                                ),
                                   TextButton.icon(
                                    onPressed: () async {
                                      final url = 'tel:${GovDetail.ph2}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    icon:Icon(Icons.phone),
                                    label: Text(GovDetail.ph2),
                              
                                ),
                        
                               // child: Text(GovDetail.ph1.toString())),
                                //   TextButton(
                                // onPressed: () async {
                                //   final url = 'tel:${GovDetail.ph2}';
            
                                //   if (await canLaunch(url)) {
                                //     await launch(url);
                                //   }
                                // },
                                // child: Text(GovDetail.ph2.toString())),
                            
                          
                          ]
                        ),
                      ),
            );
          }),
    );
  }
}