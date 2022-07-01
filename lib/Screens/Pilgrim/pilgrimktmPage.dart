import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/ViewMore/ViewMore.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimsBodyPage.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class PilgrimKtmPage extends StatelessWidget {
  const PilgrimKtmPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(title: 'Pilgrim Centers',),
        ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: pilgrims.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0),
                      child: GestureDetector(
                        child: Card(
                          color: Colors.grey[200],
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(pilgrims[index].image),
                              ListTile(
                                title: Text(pilgrims[index].title),
                                subtitle: Text(
                                  pilgrims[index].subtitle,
                                ),
                                trailing: Text(pilgrims[index].distance),
                              ),
                            ],
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PilgrimsBodyPage(
                                pilgrims: pilgrims[index],
                              ),
                            )),
                      ));
                  // return Padding(
                  //     padding: const EdgeInsets.all(25.0),
                  //     child: GestureDetector(
                  //       child: Container(
                  //           height: 200,

                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(10),
                  //               image: DecorationImage(
                  //                   fit: BoxFit.fill,
                  //                   image: AssetImage(pilgrims[index].image))),
                  //           alignment: Alignment
                  //               .bottomCenter,
                  //           child: Padding(
                  //               padding: EdgeInsets.only(
                  //                   left: 15.0,
                  //                   bottom:
                  //                       15),
                  //               child: Text(
                  //                 pilgrims[index].title.toUpperCase(),
                  //                 style: Theme.of(context)
                  //                     .textTheme
                  //                     .labelMedium
                  //                     ?.apply(
                  //                       color: Colors.white,
                  //                       backgroundColor:
                  //                           Colors.black.withOpacity(0.5),
                  //                     )
                  //                     .copyWith(letterSpacing: 1),
                  //                 textAlign: TextAlign.center,
                  //               ))),
                  //       onTap: () => Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => PilgrimsBodyPage(
                  //               pilgrims: pilgrims[index],
                  //             ),
                  //             //            ),
                  //           )),
                  //     ));
                }),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ViewMorePilgrim()));
        },
        label: const Text('View More'),
        icon: const Icon(Icons.navigate_next),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
