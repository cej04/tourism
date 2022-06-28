import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/Road.dart';

class RoadDetailPage extends StatelessWidget {
  const RoadDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: ListView.builder(
            itemCount: road.length,
            itemBuilder: (context, index) => RoadDetailCard(road: road[index]),
          ),
        ),
      ],
    ));
  }
}

class RoadDetailCard extends StatelessWidget {
  final Road road;
  const RoadDetailCard({
    Key? key,
    required this.road,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: road.bgcolor, borderRadius: BorderRadius.circular(20)),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.bus_alert,
                color: road.iconColor,
                size: 35,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                road.title.toString(),
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
                  Text(road.phone.toString(),
                      style: Theme.of(context).textTheme.subtitle1)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("pincode : "),
                  Text(road.pincode.toString(),
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
