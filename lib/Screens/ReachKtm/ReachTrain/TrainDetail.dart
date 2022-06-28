import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/Train.dart';

class TrainDetailPage extends StatelessWidget {
  const TrainDetailPage({Key? key}) : super(key: key);

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
            itemCount: train.length,
            
            itemBuilder: (context, index) =>
                TrainDetailCard(train: train[index]),
          ),
        ),
      ],
    ));
  }
}

class TrainDetailCard extends StatelessWidget {
  final Train train;
  const TrainDetailCard({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: train.bgcolor, borderRadius: BorderRadius.circular(20)),

        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.train,
                color: train.iconColor,
                size: 35,
              ),
              SizedBox(
                height: 10,
              ),
          

              Text(
                train.title.toString(),
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
                  Text(train.phone.toString(),
                      style: Theme.of(context).textTheme.subtitle1)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("pincode : "),
                  Text(train.pincode.toString(),
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
