import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/Air.dart';

class AirDetailPage extends StatelessWidget {
  const AirDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
     
        body: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
       

        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: air.length,
       
            itemBuilder: (context, index) => DetailCard(air: air[index]),
          ),
        ),
      ],
    ));
  }
}

class DetailCard extends StatelessWidget {
  final Air air;
  const DetailCard({
    Key? key,
    required this.air,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: air.bgcolor, borderRadius: BorderRadius.circular(20)),

        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.bus_alert,
                color: air.iconColor,
                size: 35,
              ),
              SizedBox(
                height: 10,
              ),
          

              Text(
                air.title.toString(),
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("phone : "),
                  Text(air.phone.toString(),
                      style: Theme.of(context).textTheme.subtitle1)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("pincode : "),
                  Text(air.pincode.toString(),
                      style: Theme.of(context).textTheme.subtitle1)
                ],
              ),
            ],
          ),
        ),
      
      ),
    );

   
  }
}
