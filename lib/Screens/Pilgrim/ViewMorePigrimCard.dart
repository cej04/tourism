import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/View.dart';

class ViewMoreCard extends StatelessWidget {
  final PilgrimViewMore pilgrimviewmore;
  final VoidCallback press;
  const ViewMoreCard(
      {Key? key, required this.pilgrimviewmore, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          //  height: MediaQuery.of(context).size.height/2.5,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: pilgrimviewmore.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.holiday_village,
                  color: pilgrimviewmore.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
                // ,

                //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),

                Text(
                  pilgrimviewmore.title.toString(),
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  pilgrimviewmore.desc,
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          //     height: MediaQuery.of(context).size.height/18,
          //    child:

          // Image.asset(restaurant.image,)
        ),
      ),
    );
  }
}
