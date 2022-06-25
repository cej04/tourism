import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/View.dart';
import 'package:ktmtourism/Screens/Pilgrim/ViewMorePigrimCard.dart';
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
        child: const MyAppBar(),
      ),
      body: ListView.builder(
          itemCount: pilgrimviewmore.length,
          itemBuilder: (context, index) =>
              ViewMoreCard(pilgrimviewmore: pilgrimviewmore[index], press: () {}
                  //  => Navigator.push(
                  //    context, MaterialPageRoute(
                  //      builder: (context) => PilgrimsBodyPage(
                  //        pilgrims:pilgrims[index],
                  //        ),
                  //        ),
                  //  ),
                  )),
    );
  }
}
