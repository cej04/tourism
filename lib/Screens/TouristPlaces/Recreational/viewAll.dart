import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/RecreationalDetails.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Recreational/recreational.dart';

class ViewAllRecreation extends StatelessWidget {
  const ViewAllRecreation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: recreational.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 25.0, top: 25.0),
                      child: GestureDetector(
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        recreational[index].imageU))),
                            alignment: Alignment
                                .bottomCenter, // This aligns the child of the container
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom:
                                        15), //some spacing to the child from bottom
                                child: Text(
                                    recreational[index].title.toUpperCase(),
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
                              builder: (context) => RecreationalDetails(
                                recreational: recreational[index],
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
