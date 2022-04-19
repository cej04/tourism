import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_produce.dart';
import 'package:ktmtourism/Screens/Produce/produce.dart';
import 'package:ktmtourism/Screens/Produce/produce_card.dart';
import 'package:ktmtourism/Screens/Produce/produce_detail.dart';


// import 'culinary_card.dart';
// import 'culinary_detail.dart';


class ProducePage extends StatelessWidget {
  
  const ProducePage({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
    Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
                onPressed: () {
                  //  PopupMenuButton(
                  //     itemBuilder: (context) => [
                  //       PopupMenuItem(
                  //         child: Text("First"),
                  //         value: 1,
                  //       ),
                  //       PopupMenuItem(
                  //         child: Text("Second"),
                  //         value: 2,
                  //       )
                  //     ]
                  // );
                },
              ),
            ),
            Text("Kottayam Tourism",style: TextStyle(color:Colors.black),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/APPlogo2.png",
                    fit: BoxFit.cover,
                    // width: 70.0,
                    // height: 70.0,
                  )),
            ),
          ],
        ),
        actions: [],
      ),
      body: Column(
        children: [
            HeaderWithProduce(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: produce.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => ProduceCard(
              produce: produce[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => ProduceDetailsPage(
                     produce:produce[index],
                     ),
                     ),
               ),
            )
            ),
            )
        ],
      ),
    );
  }
}

