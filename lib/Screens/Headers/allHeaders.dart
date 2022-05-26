import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/headers.dart';

class AllHeaders extends StatelessWidget {
  Headers headers;
   AllHeaders({
    Key? key,
    required this.size,
    required this.headers
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: size.height * 0.2,
       child: Stack(
         children: [

           Container(
            //  padding: EdgeInsects.only(left:kDefaultPadding,
            //  right:kDefaultPadding),
             height: size.height * 0.2 - 25,
              decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(headers.img),
                  fit: BoxFit.cover),
            ),
            //  decoration : BoxDecoration(
            //    color: kPrimaryColor,
            //    borderRadius: BorderRadius.only(
            //      bottomLeft: Radius.circular(36),
            //      bottomRight: Radius.circular(36)
            //    )
            //  ),
             child: 
            //  Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children:  [
            //     SizedBox(
            //       height: 70,
            //     ),
              //   Container(
              //     height: 30,
              //     decoration: const BoxDecoration(
              //           borderRadius: BorderRadius.only(
              //    bottomLeft: Radius.circular(36),
              //    bottomRight: Radius.circular(36)
              //  )
              //     ),
              //     child:
                  
                   Container(
                          width: MediaQuery. of(context). size. width,
                             color: Colors.grey[900]?.withOpacity(0.4),
                             alignment: Alignment.center,
                     child: Text(headers.header,
       
                      style: Theme.of(context).textTheme.headline5?.apply(color: Colors.white,).copyWith(letterSpacing: 1)
                 )
                              ),
                //),
            //   ],
            // ),
            //  Row(
               
            //    children: [
            //      Center(
            //        child: Text("Explore Kottayam",
            //        style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
            //      ),
            //      Spacer()
            //    ],
            //  ),
           ),
          //  Positioned(
          //    bottom: 0,
          //    left: 0,
          //    right: 0,
          //    child: Container(
          //      alignment: Alignment.center,
          //      height:54,
          //  decoration: BoxDecoration(
          //    color: Colors.white,
          //    borderRadius: BorderRadius.circular(20),
          //    boxShadow: [
          //      BoxShadow(offset: Offset(0,10),
          //      blurRadius: 50,
          //      color: kPrimaryColor.withOpacity(0.23))
          //    ]
          //  ),
          //  child: TextField(
          //    decoration: InputDecoration(
          //      hintText: "Search",
          //      hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5),
          //      ),
          //      enabledBorder: InputBorder.none,
          //      focusedBorder: InputBorder.none
          //    ),
          //  ),
          //  )
          //  )
         ],
       ),
    );
  }
}