import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Kumarakom/KumarakomDetail.dart';
import 'package:ktmtourism/Screens/Kumarakom/kumarakom.dart';

import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class KumarakomPage extends StatefulWidget {
  const KumarakomPage({Key? key}) : super(key: key);

  @override
  _KumarakomPageState createState() => _KumarakomPageState();
}

class _KumarakomPageState extends State<KumarakomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Kumarakom',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: Kumarakom.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KumarakomDetail(
                                Kumarakom: Kumarakom[index],
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
                                      image: AssetImage(Kumarakom[index].image),
                                      width: double.infinity,
                                      height: 250,
                                      fit: BoxFit.cover),
                                 
                                ],
                              ),
                              ListTile(
                                title: Text(Kumarakom[index].name),
                                leading: Icon(Icons.water),
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