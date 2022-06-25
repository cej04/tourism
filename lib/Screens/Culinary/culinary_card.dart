import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Culinary/culinary.dart';

//import 'constants.dart';

class CulinaryCard extends StatelessWidget {
  final Culinary culinary;
  final VoidCallback press;
  const CulinaryCard({Key? key, required this.culinary, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
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
                  image: AssetImage(culinary.image),
                  fit: BoxFit.fill,

                  //alignment: Alignment.topCenter,
                ),
              ),
              alignment: Alignment
                  .bottomCenter, // This aligns the child of the container
              child: Padding(
                  padding: EdgeInsets.only(
                      left: 15.0,
                      bottom: 15), //some spacing to the child from bottom
                  child: Text(culinary.title.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.apply(
                            color: Colors.white,
                            backgroundColor: Colors.black.withOpacity(0.5),
                          )
                          .copyWith(letterSpacing: 1)))),

          // Image.asset(
          //   product.image,
          //   fit: BoxFit.cover,
          //   // height: 150,
          //   // width: 150,
          // ),
          // // Container(
          // //         margin:EdgeInsets.only(left: kDefaultPadding/2,top:kDefaultPadding/2),

          // //  // padding: EdgeInsets.only(left:kDefaultPadding/2,right: kDefaultPadding/2),
          // //   decoration: BoxDecoration(
          // //     color: Colors.black,
          // //     borderRadius: BorderRadius.circular(16),

          // //   ),
          // //   child: Image.asset(product.image,fit: BoxFit.cover,),
          // // ),
          // Text(product.title)
        ],
      ),
    );
  }
}
