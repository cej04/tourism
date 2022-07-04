import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/ViewMore/View.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

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
      body: 
      Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Pilgrim Centers",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: pilgrimviewmore.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = pilgrimviewmore[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.holiday_village,color: que.iconColor,),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(que.title),
                           Text(que.trailing),
                        ],
                      ),
                      subtitle:Text(que.desc,textAlign: TextAlign.justify,),
                     // trailing: Text(que.trailing),
                    
                    ),
                  );
                }),
     
          )
        ],
      ),
      // ListView.builder(
      //     itemCount: pilgrimviewmore.length,
      //     itemBuilder: (context, index) =>
      //         ViewMoreCard(pilgrimviewmore: pilgrimviewmore[index], press: () {}
                  
      //             )),
    );
  }
}
