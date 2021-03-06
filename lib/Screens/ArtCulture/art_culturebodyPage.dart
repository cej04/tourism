import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culture.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

import 'package:ktmtourism/Utils/constants.dart';

class ArtCultureBodyPage extends StatelessWidget {
  final ArtCulture artculture;
  const ArtCultureBodyPage({Key? key, required this.artculture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     appBar:AppBar(   
      title: Text("Art & Culture"),     
    automaticallyImplyLeading: false,
    leading: Navigator.canPop(context)
        ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        : null,
),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Container(
              child: Text(artculture.title,
                 ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              
             
              image: DecorationImage(
                image: AssetImage(artculture.image),
                fit: BoxFit.fill,

                
              ),
            ),
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
                      child: Text(
                        artculture.description,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                      style: TextStyle(height: 1.7),
                      ),
                    ),
                  ),
                )

                
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
