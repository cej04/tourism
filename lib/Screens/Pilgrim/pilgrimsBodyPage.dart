import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
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
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Container(
              child: Text(pilgrims.title,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black,)),
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
             
              image: DecorationImage(
                image: AssetImage(pilgrims.image),
                fit: BoxFit.fill,

                
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              MapUtils.openMap(pilgrims.lat, pilgrims.long);
            },
            child: Container(

                height: MediaQuery.of(context).size.height / 14.5,
            
                child: Image.asset(
                  'assets/images/location1.png',
                  fit: BoxFit.fill,
                )),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: ReadMoreText(pilgrims.description,
                            textAlign: TextAlign.justify,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.apply(
                                  color: Colors.black,
                                )
                                .copyWith(height: 1.8),
                            trimLines: 20,
                            colorClickableText: Colors.blue,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                            lessStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue))
                   
                        ),
                  ),
                ),
        

            
              ],
            ),
          ),
       
        ],
      ),
     
    );
  }
}
