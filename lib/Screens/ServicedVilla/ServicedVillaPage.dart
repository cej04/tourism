import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ServicedVilla/ServicedVilla.dart';
import 'package:ktmtourism/Screens/ServicedVilla/ServicedVillaDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class ServicedVillaPage extends StatefulWidget {
  const ServicedVillaPage({Key? key}) : super(key: key);

  @override
  _ServicedVillaPageState createState() => _ServicedVillaPageState();
}

class _ServicedVillaPageState extends State<ServicedVillaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Serviced Villa',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: servicedvilla.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ServicedVillaDetail(
                                servicedvilla: servicedvilla[index],
                              ),
                            ));
                      }),
                      child: Card(
                  
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Ink.image(
                                      image: AssetImage(servicedvilla[index].image),
                                      width: double.infinity,
                                      height: 200,
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
                                  //         servicedvilla[index].classification,
                                  //         style: TextStyle(color: Colors.white),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              ListTile(
                                title: Text(servicedvilla[index].name),
                                subtitle: Text(servicedvilla[index].address),
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
