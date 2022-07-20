import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Hotel/Hotel.dart';
import 'package:ktmtourism/Screens/Hotel/HotelDetail.dart';

import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  _HotelPageState createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<Hotel> hotelonsearch = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Hotels',
        ),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                hotelonsearch = hotel
                    .where((element) => element.name
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toList();
              });
            },
            controller: _textEditingController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20), hintText: 'Search here'),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: _textEditingController.text.isNotEmpty
                    ? hotelonsearch.length
                    : hotel.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HotelDetail(
                                hotel: _textEditingController.text.isNotEmpty
                                    ? hotelonsearch[index]
                                    : hotel[index],
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
                                      image: AssetImage(
                                          _textEditingController.text.isNotEmpty
                                              ? hotelonsearch[index].image
                                              : hotel[index].image),
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
                                          _textEditingController.text.isNotEmpty
                                              ? hotelonsearch[index]
                                                  .classification
                                              : hotel[index].classification,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListTile(
                                title: Text(
                                    _textEditingController.text.isNotEmpty
                                        ? hotelonsearch[index].name
                                        : hotel[index].name),
                                subtitle: Text(
                                    _textEditingController.text.isNotEmpty
                                        ? hotelonsearch[index].address
                                        : hotel[index].address),
                                trailing: Icon(Icons.navigate_next),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
