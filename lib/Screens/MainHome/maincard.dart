import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/MainHome/main.dart';

class mainCard extends StatelessWidget {
  final MainSample mainsample;
  final VoidCallback press;
  const mainCard({Key? key, required this.mainsample, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,

      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 10,
          
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,

         
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height / 18,
                  child: Image.asset(
                    mainsample.image,
                  )),
              Text(
                mainsample.title,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),

     
    );
  }
}
