import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culture.dart';




class ArtCultureCard extends StatelessWidget {
  final ArtCulture artculture;
  final VoidCallback press;
  const ArtCultureCard(
      {Key? key, required this.artculture, required this.press})
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
              decoration: BoxDecoration(
                  //                              border: Border.all(
                  //  // color: Colors.green,
                  //  // width: 1,
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0,
                    ),
                  ]),
              child: Image.asset(
                artculture.image,
                fit: BoxFit.cover,
                // height: 150,
                // width: 150,
              ),
            ),
          ),
          Text(
            artculture.title,
            overflow: TextOverflow.visible,
            softWrap: true,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
