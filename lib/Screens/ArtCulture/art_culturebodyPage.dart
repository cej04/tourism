import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culture.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

import 'package:ktmtourism/Utils/constants.dart';

class ArtCultureBodyPage extends StatelessWidget {
  final ArtCulture artculture;
  const ArtCultureBodyPage({Key? key, required this.artculture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
       
          child: const MyAppBar(),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                child: Text(artculture.title,
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
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(artculture.image),
                  fit: BoxFit.fill,
    
                  //alignment: Alignment.topCenter,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 10,),
                // Container(
                  
                  
                //     color: Colors.grey,
                //     //crossAxisAlignment:CrossAxisAlignment.end,
                //     //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Icon(Icons.calendar_view_month_sharp  ),
                //         Text(
                //           "Celebrated on/during: ",
                //           style: Theme.of(context).textTheme.headline6,
                //         ),
                //         Text(
                //           artculture.type,
                //           style: Theme.of(context).textTheme.headline6,
                //         ),
                //       ],
                //     )
                //     ),
                // SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Row(
                    //crossAxisAlignment:CrossAxisAlignment.end,
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Description",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Text(
                        artculture.description,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
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
