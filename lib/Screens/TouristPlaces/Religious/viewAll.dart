import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_religious.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/religious.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/religiousDetails.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class ViewAllReligious extends StatelessWidget {
  const ViewAllReligious({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),
      //   child: MyAppBar(),
      // ),
      body: Column(
        children: [
         // HeaderWithReligious(size: size),
          // Expanded(
          //   child: GridView.builder(
          //      padding: const EdgeInsets.all(20),
          //     itemCount: religious.length,
          //     gridDelegate:
          //     const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //     // mainAxisSpacing: kDefaultPadding,
          //     crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //     // childAspectRatio: 0.75,
          //     ),

          //   itemBuilder: (context,index)  => ReligiousCard(
          //     religious: religious[index],
          //      press: () => Navigator.push(
          //        context, MaterialPageRoute(
          //          builder: (context) => ReligiousDetails(
          //            religious:religious[index],
          //            ),
          //            ),
          //      ),
          //   )
          //   ),
          //   )

          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: religious.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(
                            height: 200,
                            //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
                            //  width: size.width * 0.8,
                            //   height:185,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage(religious[index].imageU))),
                            alignment: Alignment
                                .bottomCenter, // This aligns the child of the container
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom:
                                        15), //some spacing to the child from bottom
                                child:
                                    Text(religious[index].title.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.apply(
                                              color: Colors.white,
                                              backgroundColor:
                                                  Colors.black.withOpacity(0.5),
                                            )
                                            .copyWith(letterSpacing: 1)))),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReligiousDetails(
                                religious: religious[index],
                              ),
                              //            ),
                            )),
                      ));
                }),
          ))
        ],
      ),
    );
  }
}
