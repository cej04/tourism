import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:ktmtourism/Screens/RestHouse/StateOwned.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Utils/constants.dart';
import 'package:ktmtourism/Screens/map_utils.dart';

class StateOwnedDetailsPage extends StatelessWidget {
  // final bool hasInternet;
  final StateOwned stateowned;
  const StateOwnedDetailsPage({Key? key, required this.stateowned})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(
            title: 'Kottayam Tourism',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Container(
                  child: Text(stateowned.title,
                      style: Theme.of(context).textTheme.headline6),
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(stateowned.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.place_outlined),
                        title: Text('${stateowned.address}'),
                      ),
                      ListTile(
                        //    title: Text(stateowned.address),
                        title: ElevatedButton.icon(
                          icon: Icon(Icons.location_pin),
                          label: Text('Locate on Map'),
                          onPressed: () async {
                            if (await InternetConnectionChecker()
                                .hasConnection) {
                              MapUtils.openMap(
                                  stateowned.latitude, stateowned.longitude);
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('No Internet!'),
                                    content: Text(
                                        'Internet is required for this action.  Retry after enabling the Connection'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Ok'))
                                    ],
                                  );
                                },
                              );
                            }
                            ;
                          },
                        ),
                      ),
                      ListTile(
                        //    title: Text(
                        //      stateowned.phone.toString(),
                        //   ),
                        title: ElevatedButton.icon(
                          icon: Icon(Icons.call),
                          label: Text('${stateowned.phone}'),
                          onPressed: () async {
                            final url = 'tel:${stateowned.phone}';

                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                        ),
                      ),
                      ListTile(
                        //  title: Text(stateowned.email.toString()),
                        title: ElevatedButton.icon(
                          icon: Icon(Icons.email),
                          label: Text('${stateowned.email}'),
                          onPressed: () async {
                            final url = 'mailto:${stateowned.email}';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
