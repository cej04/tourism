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
              //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
              //  width: size.width * 0.8,
              //   height:185,
               decoration: BoxDecoration(
                 borderRadius:BorderRadius.circular(10),
                 image:DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(historic.imageU))
               ),
               
                alignment: Alignment.bottomCenter, // This aligns the child of the container
              child: Padding(
               padding: EdgeInsets.only(left: 15.0,
               bottom: 15), //some spacing to the child from bottom
               child: Text(historic.title.toUpperCase(),  style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white,backgroundColor:Colors.black.withOpacity(0.5), ).copyWith(letterSpacing: 1))
              )
             
                ),
    //                         child: Container(
    //                          decoration: BoxDecoration(
    // //                              border: Border.all(
    // //  // color: Colors.green,
    // //  // width: 1,
    // // ),
    // boxShadow: [
    //   BoxShadow(
    //   color: Colors.grey,
    //  blurRadius: 6.0,
    // ),
    // ]
    //                           ),
                              
    //                           child: Image.asset(
    //                            historic.imageU,
    //                             fit: BoxFit.cover,
    //                             // height: 150,
    //                             // width: 150,
    //                           ),
    //                         ),
    //                       ),
                       
                           
    //                             // Text.rich(TextSpan(
    //                             //   text: item.last
    //                             // ))
    //                             Text(
                                  
                                
    //                               historic.title,
    //                               overflow: TextOverflow.visible,
    //                               maxLines: 2,
    //                               softWrap: false,
    //                               style: TextStyle(
    //                                   fontWeight: FontWeight.bold,
    //                                   fontSize: 12),
    //                             ),
                            

    //       // Image.asset(
    //       //   product.image,
    //       //   fit: BoxFit.cover,
    //       //   // height: 150,
    //       //   // width: 150,
    //       // ),
    //       // // Container(
    //       // //         margin:EdgeInsets.only(left: kDefaultPadding/2,top:kDefaultPadding/2),
    
    //       // //  // padding: EdgeInsets.only(left:kDefaultPadding/2,right: kDefaultPadding/2),
    //       // //   decoration: BoxDecoration(
    //       // //     color: Colors.black,
    //       // //     borderRadius: BorderRadius.circular(16),
              
    //       // //   ),
    //       // //   child: Image.asset(product.image,fit: BoxFit.cover,),
    //       // // ),
    //       // Text(product.title)
      // ],
     ),
        ]
      )
    );
  }
}