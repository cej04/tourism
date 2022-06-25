import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';

class PilgrimsCard extends StatelessWidget {
  final Pilgrims pilgrims;
  final VoidCallback press;
  const PilgrimsCard({Key? key, required this.pilgrims, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            // child:Container(
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.grey,
            //       blurRadius: 6.0
            //     )
            //   ]
            // ),
            // child: Image.asset(pilgrims.image,
            // fit: BoxFit.cover,
            // )
            // ,)
            // ),
            // Container(
            //   child: Text(pilgrims.title,
            //   overflow: TextOverflow.visible,
            //   softWrap: true,
            //   style: TextStyle(fontWeight: FontWeight.bold,
            //                           fontSize: 14),
            //   ),
            // )

            child: Container(
                //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
                //  width: size.width * 0.8,
                //   height:185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(pilgrims.image))),
                alignment: Alignment
                    .bottomCenter, // This aligns the child of the container
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.0,
                        bottom: 15), //some spacing to the child from bottom
                    child: Text(pilgrims.title.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.apply(
                              color: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.5),
                            )
                            .copyWith(letterSpacing: 1)))),
          )
        ],
      ),
    );
  }
}
