import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnedDetail.dart';
import 'package:ktmtourism/Utils/constants.dart';

class StayGovPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
      // width: size.width * 0.8,

      height: 185,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stateowned.length,
        itemBuilder: (BuildContext context, int index) {
          StateOwned stateOwned = stateowned[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return StateOwnedDetailsPage(
                    stateowned: stateOwned,
                  );
                }),
              );
            },
            child: Container(
                margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding / 2,
                    bottom: kDefaultPadding / 2),
                width: size.width * 0.8,
                height: 185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(stateOwned.image))),
                alignment: Alignment
                    .bottomCenter, // This aligns the child of the container
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.0,
                        bottom: 15), //some spacing to the child from bottom
                    child: Text(stateOwned.title.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            ?.apply(
                              color: Colors.white,
                              backgroundColor: Colors.black.withOpacity(0.5),
                            )
                            .copyWith(letterSpacing: 1)))),
          );
        },
      ),
    );
  }
}
