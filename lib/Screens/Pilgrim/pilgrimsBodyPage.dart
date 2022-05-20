import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';
import 'package:readmore/readmore.dart';

class PilgrimsBodyPage extends StatelessWidget {
  final Pilgrims pilgrims;
  const PilgrimsBodyPage({Key? key, required this.pilgrims}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
 appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
       
          child: const MyAppBar(),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                child: Text(pilgrims.title,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                  ),
                ],
               // borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(pilgrims.image),
                  fit: BoxFit.fill,
    
                  //alignment: Alignment.topCenter,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 10,),
              
                // SizedBox(height: 20,),
                // Padding(
                //   padding: const EdgeInsets.all(kDefaultPadding),
                //   child: Row(
                //     //crossAxisAlignment:CrossAxisAlignment.end,
                //     //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Text(
                //         "Description",
                //         style: Theme.of(context).textTheme.headline6,
                //       ),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: 
                      ReadMoreText(
                        pilgrims.description,
                         textAlign: TextAlign.justify,
                         style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),
      trimLines: 20,
      colorClickableText: Colors.blue,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),
      lessStyle:TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue)
    )
                      // Text(
                      //   festivals.description,
                      //   overflow: TextOverflow.visible,
                      //   textAlign: TextAlign.justify,
                      // ),
                    ),
                  ),
                ),
                Container()
    
                //Text(product.description,overflow: TextOverflow.visible,),
              ],
            ),
            // Container(
            //   child: Text(product.description),
            // ),
          ],
        ),
      ),
    );
  }
}
