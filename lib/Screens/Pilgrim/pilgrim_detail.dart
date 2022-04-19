import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimsBodyPage.dart';


class PilgrimDetailPage extends StatelessWidget {
  final pilgrims;
  const PilgrimDetailPage({ Key? key,
  required this.pilgrims
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children:[
            Padding(padding: const EdgeInsets.only(right: 5.0),
            child: IconButton(
                icon: const Icon(
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
              )
            ),
                        const Text("Kottayam Tourism",style: TextStyle(color:Colors.black),),
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

          ]
        ),
      ),
      body:PilgrimsBodyPage(pilgrims: pilgrims,),
      
    );
  }
}