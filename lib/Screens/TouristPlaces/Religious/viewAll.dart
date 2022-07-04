import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/religious.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Religious/religiousDetails.dart';

class ViewAllReligious extends StatelessWidget {
  const ViewAllReligious({
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
                itemCount: religious.length,
                itemBuilder: (context, index) {
                  return Padding(
                     padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 25.0),
                      child: GestureDetector(
                        child: 
                        // Container(
                        //     height: 200,
                            
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10),
                        //         image: DecorationImage(
                        //             fit: BoxFit.fill,
                        //             image:
                        //                 AssetImage(religious[index].imageU))),
                        //     alignment: Alignment
                        //         .bottomCenter, // This aligns the child of the container
                        //     child: Padding(
                        //         padding: EdgeInsets.only(
                        //             left: 15.0,
                        //             bottom:
                        //                 15), //some spacing to the child from bottom
                        //         child:
                        //             Text(religious[index].title.toUpperCase(),
                        //                 style: Theme.of(context)
                        //                     .textTheme
                        //                     .labelMedium
                        //                     ?.apply(
                        //                       color: Colors.white,
                        //                       backgroundColor:
                        //                           Colors.black.withOpacity(0.5),
                        //                     )
                        //                     .copyWith(letterSpacing: 1)))),
                       
                         Card(
                          color: Colors.grey[200],
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          
                          child: Column(
                            children: [
                              Image.asset(religious[index].imageU),
                              ListTile(
                                title: Text(religious[index].title),
                               
                                    subtitle:Text( religious[index].subtitle) ,
                                trailing: Icon(Icons.navigate_next),
                                
                              ),
                            ],
                          ),
                        ),
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
