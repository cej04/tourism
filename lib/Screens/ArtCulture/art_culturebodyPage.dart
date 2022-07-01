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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: Column(
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
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.apply(
                              color: Colors.black,
                            )
                            .copyWith(height: 1.8),
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
