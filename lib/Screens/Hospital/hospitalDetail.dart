import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_hospital.dart';
import 'package:ktmtourism/Screens/Hospital/hospital.dart';
import 'package:ktmtourism/Screens/Hospital/hospitalCard.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class HospitalDetail extends StatelessWidget {
  const HospitalDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(),
      ),
      body: Column(
        children: [
          HeaderWithHospital(size: size),
          Expanded(
              child: ListView.builder(
                  itemCount: hospital.length,
                  itemBuilder: (context, index) =>
                      HospitalCard(hospital: hospital[index], press: () {}
                          //  => Navigator.push(
                          //    context, MaterialPageRoute(
                          //      builder: (context) => PilgrimsBodyPage(
                          //        pilgrims:pilgrims[index],
                          //        ),
                          //        ),
                          //  ),
                          ))

              // GridView.builder(
              //    padding: const EdgeInsets.all(20),
              //   itemCount: hospital.length,
              //   gridDelegate:
              //   SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 1,
              //   // mainAxisSpacing: kDefaultPadding,
              //   // crossAxisSpacing: 10,
              //   //   mainAxisSpacing: 10,
              //   childAspectRatio: 2/1.5,
              //   ),

              // itemBuilder: (context,index) => HospitalCard(
              //   hospital: hospital[index],
              //    press: () {}
              //   //  => Navigator.push(
              //   //    context, MaterialPageRoute(
              //   //      builder: (context) => PilgrimsBodyPage(
              //   //        pilgrims:pilgrims[index],
              //   //        ),
              //   //        ),
              //   //  ),
              // )
              // ),

              )
        ],
      ),
    );
  }
}
