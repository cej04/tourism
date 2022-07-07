import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Ayurveda/Ayurveda.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Utils/constants.dart';

class AyuvedaDetail extends StatelessWidget {
  final Ayurveda ayurveda;
  const AyuvedaDetail({Key? key, required this.ayurveda}) : super(key: key);

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
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                      image: AssetImage(ayurveda.image),
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Opacity(
                      opacity: .9,
                      child: Container(
                        color: Colors.blueGrey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                ayurveda.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ayurveda.address,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey,
                    title: Text("OVERVIEW"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(ayurveda.overview,textAlign: TextAlign.justify,),
                      )
                    ],
                  // subtitle: Text(ayurveda.overview),
                  )),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.grey,
                    title: Text("FACILITIES"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(ayurveda.facilities,textAlign: TextAlign.justify,),
                      )
                    ],
                  // subtitle: Text(ayurveda.overview),
                  ))
            ],
          ),
        ));
  }
}
