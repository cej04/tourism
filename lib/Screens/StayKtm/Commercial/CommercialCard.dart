import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';




class CommercialCard extends StatelessWidget {
  final Commercial commercial;
  final VoidCallback  press;
  const CommercialCard({
    Key? key,
    required this.commercial,
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
                               commercial.image,
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
                                  
                                
                                  commercial.title,
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