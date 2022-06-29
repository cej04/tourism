import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnedDetail.dart';
import 'package:url_launcher/url_launcher.dart';

class StateOwnedPage extends StatefulWidget {
  const StateOwnedPage({Key? key}) : super(key: key);

  @override
  _StateOwnedPageState createState() => _StateOwnedPageState();
}

class _StateOwnedPageState extends State<StateOwnedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: stateowned.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0),
                      child: GestureDetector(
                        child: Card(
                          color: Colors.grey[200],
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          
                          child: Column(
                            children: [
                              Image.asset(stateowned[index].image),
                              ListTile(
                                title: Text(stateowned[index].title),
                                leading: ElevatedButton(
                                    child: Text("Book"),
                                    onPressed: () async {
                                      final Uri url = Uri.parse(
                                          stateowned[index].bookingurl);
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      }
                                    }),
                                trailing: Icon(Icons.navigate_next),
                                
                              ),
                            ],
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StateOwnedDetailsPage(
                                stateowned: stateowned[index],
                              ),
                            )),
                      ));
                }),
          ))
        ],
      ),
    );
  }
}
