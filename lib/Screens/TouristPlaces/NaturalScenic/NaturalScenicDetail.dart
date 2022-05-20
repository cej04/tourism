import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/NaturalScenic/NaturalScenic.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


import 'package:ktmtourism/Utils/constants.dart';
import 'package:readmore/readmore.dart';

class NaturalScenicDetail extends StatelessWidget {
  final NaturalScenic naturalscenic;

  const NaturalScenicDetail({Key? key, required this.naturalscenic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(),
      ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                child: Text(naturalscenic.title,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                  ),
                ],
               // borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(naturalscenic.imageU),
                  fit: BoxFit.fill,

                  //alignment: Alignment.topCenter,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  // Container(
            
                  //     color: Colors.grey,
                  //     //crossAxisAlignment:CrossAxisAlignment.end,
                  //     //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: [
                  //         Icon(Icons.calendar_view_month_sharp  ),
                  //         Text(
                  //           "Celebrated on/during: ",
                  //           style: Theme.of(context).textTheme.headline6,
                  //         ),
                  //         Text(
                  //           welcome.type,
                  //           style: Theme.of(context).textTheme.headline6,
                  //         ),
                  //       ],
                  //     )),
                  // SizedBox(height: 20,),
                  // Padding(
                  //   padding: const EdgeInsets.all(kDefaultPadding),
                  //   child: Row(
                  //     //crossAxisAlignment:CrossAxisAlignment.end,
                  //     //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       Text(
                  //         "Description",
                  //         style: Theme.of(context).textTheme.headline6,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          child: ReadMoreText(naturalscenic.Desc,
                              textAlign: TextAlign.justify,
                             style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),
                              trimLines: 6,
                              colorClickableText: Colors.blue,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                              lessStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue))
                          // Text(
                          //   festivals.description,
                          //   overflow: TextOverflow.visible,
                          //   textAlign: TextAlign.justify,
                          // ),
                          ),
                    ),
                  ),
            
            // GridView.builder(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            //                 crossAxisCount: 2,
            //               // mainAxisSpacing: kDefaultPadding,
            //               crossAxisSpacing: 10,
            //                 mainAxisSpacing: 10,
            //               // childAspectRatio: 0.75,
            //               ),  itemBuilder: (BuildContext context, int index) {
            
            //   },
            //   ),


             Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text("How To Reach",
                        
                          style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                 
                                    
                          ),
                        // GestureDetector(
                        //     //  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllScreen())),
                        //     child: Text("View All",style: TextStyle(
                        //   color: Colors.black, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),   Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                       height: MediaQuery.of(context).size.height/8,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            
                           // margin: EdgeInsets.symmetric(vertical: 10),
                              width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.height,
                            color: Colors.teal[100],
                            child: PopupMenuButton(
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(08.0),
                ),
              ),
                              
                            //   elevation: 20,
                              //color: Colors.teal[100],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.flight),
                                  Text("By Air",
                                     style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                          
                                          )
                                ],
                              ),
                              itemBuilder: (context) {
                                return <PopupMenuItem>[
                                  new PopupMenuItem(
                                      child: Text(naturalscenic.AirDesc))
                                ];
                              },
                            ),
                          ),
                          SizedBox(width:10.0),
                           Container(
                             width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.height,
                            color: Colors.teal[100],
                            child: PopupMenuButton(
                              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
                             // color: Colors.teal[100],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.train),
                                  Text("By Train",
                                     style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                          
                                          )
                                ],
                              ),
                              itemBuilder: (context) {
                                return <PopupMenuItem>[
                                  new PopupMenuItem(
                                      child: Text(naturalscenic.TrainDesc))
                                ];
                              },
                            ),
                          ),
                          SizedBox(width:10.0),
                          Container(
                            
                            width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.height,
                            color: Colors.teal[100],
                            child: PopupMenuButton(
                              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
                            //  color: Colors.teal[100],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.bus_alert),
                                  Text("By Bus",
                                    style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                          
                                          )
                                ],
                              ),
                              itemBuilder: (context) {
                                return <PopupMenuItem>[
                                  new PopupMenuItem(
                                      child: Text(naturalscenic.RoadDesc))
                                ];
                              },
                            ),
                          ),
                          // AspectRatio(
                          //   aspectRatio: 1 / 1,
                          //   child: Container(
                          //     margin: EdgeInsets.only(right: 15),
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(10),
                          //         color: Colors.white),
                          //     child: Icon(Icons.train),
                          //   ),
                          // ),
                          // AspectRatio(
                          //   aspectRatio: 1 / 1,
                          //   child: Container(
                          //     margin: EdgeInsets.only(right: 15),
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(10),
                          //         color: Colors.white),
                          //     child: Icon(Icons.commute),
                          //   ),
                          // )
                        ],
                      ),
                    ),
               ),

                         Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text("Photo Gallery",
                        
                          style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                 
                                    
                          ),
                        // GestureDetector(
                        //     //  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllScreen())),
                        //     child: Text("View All",style: TextStyle(
                        //   color: Colors.black, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),

Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     height: MediaQuery.of(context).size.height/6,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            String activity = naturalscenic.NaturalScenicImg[index];
              
                            return Row(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  //alignment: Alignment.center,
                                     width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.height,
                                    child: Image.asset(
                                      activity,
                                      fit: BoxFit.cover,
                                    )),
                                // Container(
              
                                //   height: 100,
              
                                //   width:120,
              
                                //   child: Image.asset(activity.gallery[1],
                                //   fit: BoxFit.cover,)
              
                                // ),
                                //  Container(
              
                                //   height: 100,
              
                                //   width:120,
              
                                //   child: Image.asset(activity.gallery[2],
                                //   fit: BoxFit.cover,)
              
                                // ),
                                // Container(
              
                                //   height: 100,
              
                                //   width:120,
              
                                //   child: Image.asset(activity.gallery[3],
              
                                //   fit: BoxFit.cover,)
              
                                // ),
                                // Container(
              
                                //   height: 100,
              
                                //   width:120,
              
                                //   child: Image.asset(activity.gallery[4],
                                //   fit: BoxFit.cover,)
              
                                // ),
                              ],
                            );
                          },
                          separatorBuilder: (_, index) => const SizedBox(
                                width: 10.0,
                              ),
                          itemCount: naturalscenic.NaturalScenicImg.length),
                    ),
                  ),
                
                  SizedBox(
                    height: 20,
                  ),



                  
                  //Text(product.description,overflow: TextOverflow.visible,),
                ],
              ),
            ),
            // Container(
            //   child: Text(product.description),
            // ),
          ],
        ));
  }
}
