import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/recreational.dart';




class RecreationalCard extends StatelessWidget {
  final Recreational recreational;
  final VoidCallback  press;
  const RecreationalCard({
    Key? key,
    required this.recreational,
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
                               recreational.imageU,
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
                                  
                                
                                  recreational.title,
                                  overflow: TextOverflow.visible,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),

          // Image.asset(
          //   product.image,
          //   fit: BoxFit.cover,
          //   // height: 150,
          //   // width: 150,
          // ),
          // // Container(
          // //         margin:EdgeInsets.only(left: kDefaultPadding/2,top:kDefaultPadding/2),
    
          // //  // padding: EdgeInsets.only(left:kDefaultPadding/2,right: kDefaultPadding/2),
          // //   decoration: BoxDecoration(
          // //     color: Colors.black,
          // //     borderRadius: BorderRadius.circular(16),
              
          // //   ),
          // //   child: Image.asset(product.image,fit: BoxFit.cover,),
          // // ),
          // Text(product.title)
        ],
      ),
    );
  }
}