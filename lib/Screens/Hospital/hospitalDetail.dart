import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Hospital/hospital.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HospitalDetail extends StatelessWidget {
  const HospitalDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Kottayam Tourism',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Hospital",
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
          ),
          // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: hospital.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = hospital[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(
                        Icons.local_hospital_outlined,
                        color: que.iconColor,
                      ),
                      title: Text(que.name),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Text("Phone :"),
                              Text(que.description),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Phone :"),
                              TextButton(
                                  onPressed: () async {
                                    final url = 'tel:${que.phone}';

                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    }
                                  },
                                  child: Text(que.phone.toString())),
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
