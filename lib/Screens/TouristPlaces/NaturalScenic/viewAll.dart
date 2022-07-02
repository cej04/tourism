import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenic.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenicDetail.dart';

class ViewAllNatural extends StatelessWidget {
  const ViewAllNatural({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: naturalscenic.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 25.0, top: 25.0),
                      child: GestureDetector(
                        child:
                        //  Container(
                        //     height: 200,
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10),
                        //         image: DecorationImage(
                        //             fit: BoxFit.fill,
                        //             image: AssetImage(
                        //                 naturalscenic[index].imageU))),
                        //     alignment: Alignment.bottomCenter,
                        //     child: Padding(
                        //         padding:
                        //             EdgeInsets.only(left: 15.0, bottom: 15),
                        //         child: Text(
                        //             naturalscenic[index].title.toUpperCase(),
                        //             style: Theme.of(context)
                        //                 .textTheme
                        //                 .labelMedium
                        //                 ?.apply(
                        //                   color: Colors.white,
                        //                   backgroundColor:
                        //                       Colors.black.withOpacity(0.5),
                        //                 )
                        //                 .copyWith(letterSpacing: 1)))),
                        // onTap: () => Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => NaturalScenicDetail(
                        //         naturalscenic: naturalscenic[index],
                        //       ),
                        //     )),
                         Card(
                          color: Colors.grey[200],
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          
                          child: Column(
                            children: [
                              Image.asset(naturalscenic[index].imageU),
                              ListTile(
                                title: Text(naturalscenic[index].title),
                               
                                    subtitle:Text( naturalscenic[index].subtitle) ,
                                trailing: Icon(Icons.navigate_next),
                                
                              ),
                            ],
                          ),
                        ),
                                 onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NaturalScenicDetail(
                                naturalscenic: naturalscenic[index],
                              ),
                            )
                            ),
                      ));
                }),
          ))
        ],
      ),
    );
  }
}
