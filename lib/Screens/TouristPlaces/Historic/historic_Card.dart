import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/historic.dart';




class HistoricCard extends StatelessWidget {
  final Historic historic;
  final VoidCallback  press;
  const HistoricCard({
    Key? key,
    required this.historic,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
       mainAxisSize: MainAxisSize.max, 
       mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                               historic.imageU,
                                fit: BoxFit.cover,
                                // height: 150,
                                // width: 150,
                              ),
                            ),
                          ),
                       
                           
                                // Text.rich(TextSpan(
                                //   text: item.last
                                // ))
                                Text(
                                  
                                
                                  historic.title,
                                  overflow: TextOverflow.visible,
                                  maxLines: 2,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
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