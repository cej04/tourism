import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/how_to_reach.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

import 'package:readmore/readmore.dart';

class HowToReachBodyPage extends StatelessWidget {
  final HowToReach howtoreach;
  const HowToReachBodyPage({Key? key, required this.howtoreach}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                child: Text(howtoreach.title,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(howtoreach.image),
                  fit: BoxFit.fill,
    
                  //alignment: Alignment.topCenter,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 10,),
               
                Container(
                  
                  
                    color: Colors.grey,
                    //crossAxisAlignment:CrossAxisAlignment.end,
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.category_outlined  ),
                        Text(
                          "Category/Type: ",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          howtoreach.category,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    )
                    ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: 
                      ReadMoreText(
                        howtoreach.description,
                         textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
      trimLines: 6,
      colorClickableText: Colors.blue,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      moreStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),
      lessStyle:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue)
    )
                      // Text(
                      //   festivals.description,
                      //   overflow: TextOverflow.visible,
                      //   textAlign: TextAlign.justify,
                      // ),
                    ),
                  ),
                ),
                Card(

                )
              
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
