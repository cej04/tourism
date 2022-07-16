import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Resort/ResortDetail.dart';
import 'package:ktmtourism/Screens/Resort/resort.dart';


import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class ResortPage extends StatefulWidget {
  const ResortPage({Key? key}) : super(key: key);

  @override
  _ResortPageState createState() => _ResortPageState();
}

class _ResortPageState extends State<ResortPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Resort',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: resort.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResortDetail(
                                resort: resort[index],
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
                                      image: AssetImage(resort[index].image),
                                      width: double.infinity,
                                      height: 200,
                                      fit: BoxFit.cover),
                                  Positioned(
                                    top: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.only(
                                          
                                          bottomLeft: Radius.circular(20),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          resort[index].classification,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListTile(
                                title: Text(resort[index].name),
                                subtitle: Text(resort[index].address),
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
