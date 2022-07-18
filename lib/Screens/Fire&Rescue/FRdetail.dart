import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Fire&Rescue/FR.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class FRdetail extends StatelessWidget {
  const FRdetail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Fire & Rescue',),
      ),
      body:  ListView.builder(
          itemCount: fr.length,
          itemBuilder: (BuildContext context, int index) {
                              final frdetail = fr[index];

            return  Card(
              child: ListTile(
                       
                        leading: Icon(
                          Icons.fire_extinguisher,
                          
                        ),
                        title: Text(frdetail.name),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Text("Phone :"),
                                Text(frdetail.place),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Phone :"),
                                TextButton(
                                    onPressed: () async {
                                      final url = 'tel:${frdetail.ph1}';
            
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    },
                                    child: Text(frdetail.ph1.toString())),
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
