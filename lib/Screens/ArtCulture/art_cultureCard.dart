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
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(artculture.image))),
                alignment: Alignment
                    .bottomCenter, 
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.0,
                        bottom: 15), 
                    child: Text(artculture.title.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.apply(
                              color: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.5),
                            )
                            .copyWith(letterSpacing: 1)))),
         
          ),
        ],
      ),
    );
  }
}
