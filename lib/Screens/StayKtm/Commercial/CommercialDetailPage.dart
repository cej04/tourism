import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import '../../../Utils/constants.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class commercialDetailsPage extends StatelessWidget {
  final Commercial commercial;
  const commercialDetailsPage({Key? key, required this.commercial})
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
                  child: Text(commercial.title,
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
                    image: AssetImage(commercial.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  children: [
                     ListTile(
                        leading: Icon(Icons.location_searching),
                        title: Text('${commercial.address}'),
                      ),
              //      Text('${commercial.address}'),
                    ListTile(
//title: Text('${commercial.address}'),
                      title: ElevatedButton.icon(
                        icon: Icon(Icons.location_pin),
                        label: Text('Locate on Map'),
                        onPressed: () {
                          MapUtils.openMap(
                              commercial.latitude, commercial.longitude);
                        },
                      ),
                    ),
                    ListTile(
                      //   title: Text(
                      //     commercial.phone.toString(),
                      //  ),
                      title: ElevatedButton.icon(
                        icon: Icon(Icons.call),
                        label: Text('${commercial.phone}'),
                        onPressed: () async {
                          final url = 'tel:${commercial.phone}';
                          // final url = 'tel:$stateowned.phone';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                      ),
                    ),
                    ListTile(
                      // title: Text(commercial.email.toString()),
                      title: ElevatedButton.icon(
                        icon: Icon(Icons.email),
                        label: Text('${commercial.email}'),
                        onPressed: () async {
                          final url = 'mailto:${commercial.email}';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                      ),
                    ),
                    ListTile(
                      //  title: Text(commercial.website.toString()),
                      title: ElevatedButton.icon(
                        icon: Icon(Icons.web),
                        label: Text(commercial.website),
                        onPressed: () async {
                          final Uri url = Uri.parse(commercial.website);
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
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
