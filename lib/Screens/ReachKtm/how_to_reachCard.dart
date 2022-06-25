import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reach.dart';

class HowToReachCard extends StatelessWidget {
  final HowToReach howtoreach;
  final VoidCallback press;
  const HowToReachCard(
      {Key? key, required this.howtoreach, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
                //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
                //  width: size.width * 0.8,
                //   height:185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(howtoreach.image))),
                alignment: Alignment
                    .bottomCenter, // This aligns the child of the container
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.0,
                        bottom: 15), //some spacing to the child from bottom
                    child: Text(howtoreach.title.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.apply(
                              color: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.5),
                            )
                            .copyWith(letterSpacing: 1)))),
            //                         child: Container(
            //                          decoration: const BoxDecoration(
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
            //                            howtoreach.image,
            //                             fit: BoxFit.cover,
            //                             // height: 150,
            //                             // width: 150,
            //                           ),
            //                         ),
            //                       ),
            //                           Container(

            //                             child:
            //                             // Text.rich(TextSpan(
            //                             //   text: item.last
            //                             // ))
            //                             Text(

            //                               howtoreach.title,
            //                               overflow: TextOverflow.visible,
            //                               softWrap: true,
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold,
            //                                   fontSize: 14),
            //                             ),
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
