import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/ViewMore/View.dart';
import 'package:ktmtourism/Screens/Pilgrim/ViewMore/ViewMorePigrimCard.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class ViewMorePilgrim extends StatelessWidget {
  const ViewMorePilgrim({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: ListView.builder(
          itemCount: pilgrimviewmore.length,
          itemBuilder: (context, index) =>
              ViewMoreCard(pilgrimviewmore: pilgrimviewmore[index], press: () {}
                  
                  )),
    );
  }
}
