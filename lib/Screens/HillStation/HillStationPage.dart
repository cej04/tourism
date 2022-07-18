import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/HillStation/HillStation.dart';
import 'package:ktmtourism/Screens/HillStation/HillStationDetail.dart';

import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class HillStationPage extends StatefulWidget {
  const HillStationPage({Key? key}) : super(key: key);

  @override
  _HillStationPageState createState() => _HillStationPageState();
}

class _HillStationPageState extends State<HillStationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Hill Stations',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: hillstation.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HillStationDetail(
                                hillstation: hillstation[index],
                              ),
                            ));
                      }),
                      child: Card(
                        color: Colors.grey[200],
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Ink.image(
                                      image: AssetImage(hillstation[index].image),
                                      width: double.infinity,
                                      height: 200,
                                      fit: BoxFit.cover),
                                 
                                ],
                              ),
                              ListTile(
                                title: Text(hillstation[index].name),
                             //   leading: Icon(Icons.landscape),
                               subtitle: Text(hillstation[index].subname),
                                trailing: Icon(Icons.navigate_next),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
