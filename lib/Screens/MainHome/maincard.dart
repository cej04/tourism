import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/MainHome/main.dart';

class mainCard extends StatelessWidget {
  final MainSample mainsample;
  final VoidCallback press;
  const mainCard({Key? key, required this.mainsample, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,

 child:   Padding(
   padding: const EdgeInsets.all(5.0),
   child: Card(
     
    
    elevation: 10,
    // shape: RoundedRectangleBorder(
    //   side: BorderSide(color: Colors.blue, width: 1),
    //   borderRadius: BorderRadius.circular(10),
    // ),
     child: Column(
        mainAxisSize: MainAxisSize.max,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
       //mainAxisSize: MainAxisSize.min,
       children: <Widget>[
       



         Container(
            height: MediaQuery.of(context).size.height/18,
           child: 
         
         Image.asset(mainsample.image,)
         
         ),

        
         Text(mainsample.title,style: Theme.of(context).textTheme.bodyText2,textAlign: TextAlign.center,)
         
     
       ],
     ),
   ),
 ),










      // child: Column(
      //   mainAxisSize: MainAxisSize.max,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      //   children: [
          
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         width:200,
      //         height: 200,
      //         child: Card(
                
      //           //color: Colors.blue[50],
      //           elevation: 10,
      //           shape: RoundedRectangleBorder(
                  
      //             borderRadius: BorderRadius.circular(10), // if you need this
      //             side: BorderSide(
      //               color: Colors.grey.withOpacity(0.5),
      //             ),
      //           ),
      //           child: Column(
      //             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               SizedBox(
      //                 height: 10,
      //               ),
      //               Expanded(
      //                   child:  
      //                   Container(  
                          
      //                         height: 120.0,
      // width: 150.0,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(
      //          mainsample.image),
      //     fit: BoxFit.contain,
      //   ),
      //   shape: BoxShape.circle,
      // ),)
                  
      //                     ),
      //               // SvgPicture.asset(mainsample.image),
      //               //  Icon(mainsample.icons),
      //               //SizedBox(height: 10,),
      //               Text(
      //                 mainsample.title,
      //                 textAlign: TextAlign.center,
      //                 style: Theme.of(context).textTheme.subtitle2,
      //               ),
      //               SizedBox(
      //                 height: 11,
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       //                         child: Container(
      //       //                          decoration: BoxDecoration(
      //       // //                              border: Border.all(
      //       // //  // color: Colors.green,
      //       // //  // width: 1,
      //       // // ),
      //       // boxShadow: [
      //       //   BoxShadow(
      //       //   color: Colors.grey,
      //       //  blurRadius: 6.0,
      //       // ),
      //       // ]
      //       //                           ),

      //       //                           child: Image.asset(
      //       //                            mainsample.image,
      //       //                             fit: BoxFit.cover,
      //       //                             // height: 150,
      //       //                             // width: 150,
      //       //                           ),
      //       //                         ),
      //     ),
      //     // Container(

      //     //   child:
      //     //   // Text.rich(TextSpan(
      //     //   //   text: item.last
      //     //   // ))
      //     //   Text(

      //     //     mainsample.title,
      //     //     overflow: TextOverflow.visible,
      //     //     softWrap: true,
      //     //     style: TextStyle(
      //     //         fontWeight: FontWeight.bold,
      //     //         fontSize: 14),
      //     //   ),
      //     // ),

      //     // Image.asset(
      //     //   product.image,
      //     //   fit: BoxFit.cover,
      //     //   // height: 150,
      //     //   // width: 150,
      //     // ),
      //     // // Container(
      //     // //         margin:EdgeInsets.only(left: kDefaultPadding/2,top:kDefaultPadding/2),

      //     // //  // padding: EdgeInsets.only(left:kDefaultPadding/2,right: kDefaultPadding/2),
      //     // //   decoration: BoxDecoration(
      //     // //     color: Colors.black,
      //     // //     borderRadius: BorderRadius.circular(16),

      //     // //   ),
      //     // //   child: Image.asset(product.image,fit: BoxFit.cover,),
      //     // // ),
      //     // Text(product.title)
      //   ],
      // ),
    );
  }
}
