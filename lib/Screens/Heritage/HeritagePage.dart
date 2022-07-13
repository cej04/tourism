import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Heritage/Heritage.dart';
import 'package:ktmtourism/Screens/Heritage/HeritageDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class HeritagePage extends StatefulWidget {
  const HeritagePage({Key? key}) : super(key: key);

  @override
  _HeritagePageState createState() => _HeritagePageState();
}

class _HeritagePageState extends State<HeritagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Ayurveda Center',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: heritage.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HeritageDetail(
                                heritage: heritage[index],
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
                                      image: AssetImage(heritage[index].image),
                                      width: double.infinity,
                                      height: 250,
                                      fit: BoxFit.cover),
                                  // Positioned(
                                  //   top: 0.0,
                                  //   right: 0.0,
                                  //   child: Container(
                                  //     decoration: BoxDecoration(
                                  //       color: Colors.orangeAccent,
                                  //       borderRadius: BorderRadius.only(
                                          
                                  //         bottomLeft: Radius.circular(20),
                                  //       ),
                                  //     ),
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.all(8.0),
                                  //       child: Text(
                                  //         ayurveda[index].classification,
                                  //         style: TextStyle(color: Colors.white),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              ListTile(
                                title: Text(heritage[index].name),
                               // subtitle: Text(heritage[index].address),
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
