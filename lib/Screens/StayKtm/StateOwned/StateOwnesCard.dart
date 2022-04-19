import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';




class StateOwnedCard extends StatelessWidget {
  final StateOwned stateowned;
  final VoidCallback  press;
  const StateOwnedCard({
    Key? key,
    required this.stateowned,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
       mainAxisSize: MainAxisSize.max, 
        children: [
           Expanded(
                            child: Container(
                             decoration: BoxDecoration(
    //                              border: Border.all(
    //  // color: Colors.green,
    //  // width: 1,
    // ),
    boxShadow: [
      BoxShadow(
      color: Colors.grey,
     blurRadius: 6.0,
    ),
    ]
                              ),
                              
                              child: Image.asset(
                               stateowned.image,
                                fit: BoxFit.cover,
                                // height: 150,
                                // width: 150,
                              ),
                            ),
                          ),
                              Container(
                               
                                child: 
                                // Text.rich(TextSpan(
                                //   text: item.last
                                // ))
                                Text(
                                  
                                
                                  stateowned.title,
                                  overflow: TextOverflow.visible,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),

        
        ],
      ),
    );
  }
}