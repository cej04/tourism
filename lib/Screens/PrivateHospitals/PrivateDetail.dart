import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/PrivateHospitals/Privatehospital.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivateDetail extends StatelessWidget {
  const PrivateDetail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Private Hospitals',),
      ),
      body:  ListView.builder(
          itemCount: privatehospital.length,
          itemBuilder: (BuildContext context, int index) {
                              final PrivateDetail = privatehospital[index];

            return  Card(
              child: ListTile(
                       
                        leading: Icon(
                          Icons.local_hospital,
                          
                        ),
                        title: Text(PrivateDetail.name),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                         
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Phone :"),
                                TextButton(
                                    onPressed: () async {
                                      final url = 'tel:${PrivateDetail.ph1}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    child: Text(PrivateDetail.ph1.toString())),
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