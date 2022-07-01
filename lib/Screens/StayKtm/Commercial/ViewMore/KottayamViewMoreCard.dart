import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/ViewMore/viewMore.dart';
import 'package:url_launcher/url_launcher.dart';

class kottayamViewMoreCard extends StatelessWidget {
  const kottayamViewMoreCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
                itemCount: commercialviewmore.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = commercialviewmore[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(
                        Icons.star_border_purple500,
                        color: que.iconColor,
                      ),
                      title: Text(que.title),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Tariff :"),
                              Text(que.tariff),
                            ],
                          ),
                          SizedBox(height: 10.0),
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
                                  child: Text(que.phone)),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Website :"),
                              TextButton(
                                  onPressed: () async {
                                    final Uri url = Uri.parse(que.website);
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    }
                                  },
                                  child: Text(que.website.toString())),
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

class ChanganacherryViewMoreCard extends StatelessWidget {
  const ChanganacherryViewMoreCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
                itemCount: viewmorechanganacherry.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = viewmorechanganacherry[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(
                        Icons.star_border_purple500,
                        color: que.iconColor,
                      ),
                      title: Text(que.title),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Tariff :"),
                              Text(que.tariff),
                            ],
                          ),
                          SizedBox(height: 10.0),
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
                                  child: Text(que.phone)),
                            ],
                          ),
                          //
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

class EttumanoorViewMoreCard extends StatelessWidget {
  const EttumanoorViewMoreCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
                itemCount: viewmorettumanoor.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = viewmorettumanoor[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(
                        Icons.star_border_purple500,
                        color: que.iconColor,
                      ),
                      title: Text(que.title),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Tariff :"),
                              Text(que.tariff),
                            ],
                          ),
                          SizedBox(height: 10.0),
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
                                  child: Text(que.phone)),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Website :"),
                              TextButton(
                                  onPressed: () async {
                                    final Uri url = Uri.parse(que.website);
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    }
                                  },
                                  child: Text(que.website.toString())),
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

class VaikomViewMoreCard extends StatelessWidget {
  const VaikomViewMoreCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
                itemCount: viewmoreVaikom.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = viewmoreVaikom[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(
                        Icons.star_border_purple500,
                        color: que.iconColor,
                      ),
                      title: Text(que.title),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Tariff :"),
                              Text(que.tariff),
                            ],
                          ),
                          SizedBox(height: 10.0),
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
                                  child: Text(que.phone)),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Website :"),
                              TextButton(
                                  onPressed: () async {
                                    final Uri url = Uri.parse(que.website);
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    }
                                  },
                                  child: Text(que.website.toString())),
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

class MundakkayamViewMoreCard extends StatelessWidget {
  const MundakkayamViewMoreCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
                itemCount: viewmoremundakkayam.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = viewmoremundakkayam[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(
                        Icons.star_border_purple500,
                        color: que.iconColor,
                      ),
                      title: Text(que.title),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Tariff :"),
                              Text(que.tariff),
                            ],
                          ),
                          SizedBox(height: 10.0),
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
                                  child: Text(que.phone)),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Website :"),
                              TextButton(
                                  onPressed: () async {
                                    final Uri url = Uri.parse(que.website);
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    }
                                  },
                                  child: Text(que.website.toString())),
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
