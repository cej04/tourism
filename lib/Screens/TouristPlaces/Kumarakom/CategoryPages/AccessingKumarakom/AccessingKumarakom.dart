import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/CategoryPages/AccessingKumarakom/Accessing.dart';
import 'package:ktmtourism/Utils/constants.dart';

class AccessingKumarakomPage extends StatelessWidget {
  const AccessingKumarakomPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Accessing Kumarakom",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: accessingKottayam.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = accessingKottayam[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.alt_route,color: que.iconColor,),
                      title: Text(que.title),
                    
                    ),
                  );
                }),
     
          )
        ],
      ),
    );
  }
}
