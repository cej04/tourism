import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnedDetail.dart';

class StateOwnedPage extends StatefulWidget {
  const StateOwnedPage({Key? key}) : super(key: key);

  @override
  _StateOwnedPageState createState() => _StateOwnedPageState();
}

class _StateOwnedPageState extends State<StateOwnedPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: stateowned.length,
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
                              Image.asset(stateowned[index].image),
                              ListTile(
                                leading: Text("Availability"),
                                title: Text(stateowned[index].title),
                                trailing: Text("Book"),
                              ),
                            ],
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StateOwnedDetailsPage(
                                stateowned: stateowned[index],
                              ),
                            )),
                      ));
                  // return Padding(
                  //     padding: const EdgeInsets.only(
                  //         left: 25.0, right: 25.0, top: 25.0),
                  //     child: GestureDetector(
                  //       child: Container(
                  //           height: 200,
                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(10),
                  //               image: DecorationImage(
                  //                   fit: BoxFit.fill,
                  //                   image:
                  //                       AssetImage(stateowned[index].image))),
                  //           alignment: Alignment.bottomCenter,
                  //           child: Padding(
                  //               padding:
                  //                   EdgeInsets.only(left: 15.0, bottom: 15),
                  //               child:
                  //                   Text(stateowned[index].title.toUpperCase(),
                  //                       style: Theme.of(context)
                  //                           .textTheme
                  //                           .labelMedium
                  //                           ?.apply(
                  //                             color: Colors.white,
                  //                             backgroundColor:
                  //                                 Colors.black.withOpacity(0.5),
                  //                           )
                  //                           .copyWith(letterSpacing: 1)))),
                  //       onTap: () => Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => StateOwnedDetailsPage(
                  //               stateowned: stateowned[index],
                  //             ),
                  //           )),
                  //     ));
                }),
          ))
        ],
      ),
    );
  }
}
