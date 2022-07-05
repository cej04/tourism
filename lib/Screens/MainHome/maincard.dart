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

      child: Padding(
        padding: const EdgeInsets.only(left:2.0,right:2.0),
        child: Card(
          elevation: 10,
          
          child: Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
             // mainAxisAlignment: MainAxisAlignment.spaceAround,

         
              children: <Widget>[
                // Container(
                //     height: MediaQuery.of(context).size.height / 18,
                  Image.asset(
                      mainsample.image,
                      height: 50,
                      width: 50,
                    ),
                  //  ),
               // Icon(mainsample.icons,color: Colors.teal,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    mainsample.title,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),

     
    );
  }
}
