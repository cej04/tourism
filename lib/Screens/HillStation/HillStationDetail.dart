// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/HillStation/HillStation.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HillStationDetail extends StatefulWidget {
  final HillStation hillstation;
  const HillStationDetail({Key? key, required this.hillstation})
      : super(key: key);

  @override
  State<HillStationDetail> createState() => _HillStationDetailState();
}

class _HillStationDetailState extends State<HillStationDetail> {
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
                      image: AssetImage(widget.hillstation.image),
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Opacity(
                      opacity: .9,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.hillstation.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              widget.hillstation.desc.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Description"),

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              widget.hillstation.desc,
                              textAlign: TextAlign.justify,style: TextStyle(height:1.9),
                            ),
                          ),
                        ],
                        // subtitle: Text(ayurveda.overview),
                      ))
                  : Container(),
              widget.hillstation.reach.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Colors.grey[200],
                        title: Text("Getting There"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              widget.hillstation.reach,
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ))
                  : Container(),
                  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
       
            textColor: Colors.white,
             //height: 60.0,
              color: Colors.teal,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.night_shelter_outlined, color: Colors.white,),
                  ),
                  Text('Where to Stay', )
                ],
              ),
            ),
             FlatButton(
       
            textColor: Colors.white,
             //height: 60.0,
              color: Colors.teal,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.pin_drop, color: Colors.white,),
                  ),
                  Text('Locate on Map', )
                ],
              ),
            ),
          ],
                //  Expanded(
                  //    child: ListView.builder(
                  //            itemCount: advancedTiles.length,
                  //            itemBuilder: (BuildContext context, int index) {
                  //             return
                  //              ListTile(
                  //                  leading: const Icon(Icons.list),
                  //                  trailing: const Text(
                  //                    "GFG",
                  //                    style: TextStyle(color: Colors.green, fontSize: 15),
                  //                  ),
                  //                  title: Text("List item $index"));
                  //            }),
                  //  ),
    
              // ExpansionPanelList.radio(
              //   expansionCallback: (index, isExpanded) {
              //     final tile = advancedTiles[index];
              //     setState(() => tile.isExpanded = isExpanded);
              //   },
              //   children: advancedTiles
              //       .map((tile) => ExpansionPanelRadio(
              //             value: tile.title,
              //             canTapOnHeader: true,
              //             headerBuilder: (context, isExpanded) =>
              //                 buildTile(tile),
              //             body: Column(
              //               children: tile.tiles.map(buildTile).toList(),
              //             ),
              //           ))
              //       .toList(),
              // ),
// ElevatedButton.icon(
//   onPressed: () {
//       // Respond to button press
//   },
//   icon: Icon(Icons.night_shelter_outlined,),
//   label: Text("Where to Stay"),
// ),
                  )
            ],
          ),
        ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [FloatingActionButton.extended(
      //     onPressed: (){},
      //     icon: Icon(Icons.pin_drop),
      //     label: Text('Locate on Map'),
      //      heroTag: null,
      //   ),
      //   FloatingActionButton.extended(
      //     onPressed: (){},
      //     icon: Icon(Icons.night_shelter_outlined),
      //     label: Text('Where to Stay'),
      //      heroTag: null,
      //   ),
        
      //   ],),
       
        
        );
  }
}

// Widget buildTile(AdvancedTile tile) => Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:   ListTile(
//         title: Text(tile.title),
//         leading: Image.asset(tile.simage),
//         //subtitle: Text(tile.web),
//         trailing: Text(tile.dis),
//         onTap: () {},
//       ),
// );
