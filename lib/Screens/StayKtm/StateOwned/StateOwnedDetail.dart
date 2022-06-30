import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Utils/constants.dart';
import 'package:ktmtourism/Screens/map_utils.dart';

class StateOwnedDetailsPage extends StatelessWidget {
  final StateOwned stateowned;
  const StateOwnedDetailsPage({Key? key, required this.stateowned})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(),
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
                height: 200,
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
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text(stateowned.address),
                      leading: ElevatedButton.icon(
                        icon: Icon(Icons.location_pin),
                        label: Text('Locate on Map'),
                        onPressed: () {
                          MapUtils.openMap(
                              stateowned.latitude, stateowned.longitude);
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        stateowned.phone.toString(),
                      ),
                      leading: ElevatedButton.icon(
                        icon: Icon(Icons.call),
                        label: Text('Make a call'),
                        onPressed: () async {
                          final phoneNumber = stateowned.phone;
                          final url = 'tel:$phoneNumber';
                          // final url = 'tel:$stateowned.phone';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(stateowned.email.toString()),
                      leading: ElevatedButton.icon(
                        icon: Icon(Icons.email),
                        label: Text('Send an email'),
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
              )
            ],
          ),
        ));
  }
}
