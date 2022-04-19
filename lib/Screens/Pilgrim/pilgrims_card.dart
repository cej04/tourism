import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';

class PilgrimsCard extends StatelessWidget {
  final Pilgrims pilgrims;
  final VoidCallback press;
  const PilgrimsCard({ Key? key,
  required this.pilgrims,
  required this.press
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child:Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 6.0
                )
              ]
            ),
            child: Image.asset(pilgrims.image,
            fit: BoxFit.cover,
            )
            ,)
            ),
            Container(
              child: Text(pilgrims.title,
              overflow: TextOverflow.visible,
              softWrap: true,
              style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 14),
              ),
            )
        ],
      ),
      
    );
  }
}