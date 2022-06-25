import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenic.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenicDetail.dart';
import 'package:ktmtourism/Utils/constants.dart';

class NaturalScenicPages extends StatelessWidget {
  const NaturalScenicPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        height: 200.0,
        // color: Colors.blue,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: naturalscenic.length,
            itemBuilder: (BuildContext context, int index) {
              NaturalScenic naturalscenics = naturalscenic[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return NaturalScenicDetail(
                        naturalscenic: naturalscenics,
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
                            image: AssetImage(naturalscenics.imageU))),
                    alignment: Alignment
                        .bottomCenter, // This aligns the child of the container
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0,
                            bottom: 15), //some spacing to the child from bottom
                        child: Text(naturalscenics.title.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1)))),
              );
            }),
      )
    ]);
  }
}
