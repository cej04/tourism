import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Restaurant/Restaurant.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: 
      
      
//       Column(
//         children: [
//          // HeaderWithRestaurant(size: size),
//           Expanded(
//               child: ListView.builder(
//                   itemCount: restaurant.length,
//                   itemBuilder: (context, index) =>
//                       RestaurantCard(restaurant: restaurant[index], press: () {}
//                           //  => Navigator.push(
//                           //    context, MaterialPageRoute(
//                           //      builder: (context) => PilgrimsBodyPage(
//                           //        pilgrims:pilgrims[index],
//                           //        ),
//                           //        ),
//                           //  ),
//                           ))

//               // GridView.builder(
//               //    padding: const EdgeInsets.all(20),
//               //   itemCount: restaurant.length,
//               //   gridDelegate:
//               //   SliverGridDelegateWithFixedCrossAxisCount(
//               //     crossAxisCount: 1,
//               //   // mainAxisSpacing: kDefaultPadding,
//               //   // crossAxisSpacing: 10,
//               //   //   mainAxisSpacing: 10,
//               //   childAspectRatio: 2/1.5,
//               //   ),

//               // itemBuilder: (context,index) => RestaurantCard(
//               //   restaurant: restaurant[index],
//               //    press: () {}
//               //   //  => Navigator.push(
//               //   //    context, MaterialPageRoute(
//               //   //      builder: (context) => PilgrimsBodyPage(
//               //   //        pilgrims:pilgrims[index],
//               //   //        ),
//               //   //        ),
//               //   //  ),
//               // )
//               // ),
//               //   )
// //           Expanded(
// //             child: Container(
// //               child:
// // ListView.builder(
// //           itemCount: pilgrims.length,
// //           itemBuilder: (context, index) {
// //             return

// //              Padding(
// //                padding: const EdgeInsets.all(8.0),
// //                child: GestureDetector(

// //                  child: Container(
// //                    height: 200,
// //                   //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
// //                   //  width: size.width * 0.8,
// //                   //   height:185,
// //                    decoration: BoxDecoration(
// //                      borderRadius:BorderRadius.circular(10),
// //                      image:DecorationImage(
// //                            fit: BoxFit.fill,
// //                            image: AssetImage( pilgrims[index].image))
// //                    ),

// //                     alignment: Alignment.bottomCenter, // This aligns the child of the container
// //                   child: Padding(
// //                    padding: EdgeInsets.only(left: 15.0,
// //                    bottom: 15), //some spacing to the child from bottom
// //             //   )
// //           Expanded(
// //             child: Container(
// //               child:
// // ListView.builder(
// //           itemCount: pilgrims.length,
// //           itemBuilder: (context, index) {
// //             return

// //              Padding(
// //                padding: const EdgeInsets.all(8.0),
// //                child: GestureDetector(

// //                  child: Container(
// //                    height: 200,
// //                   //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
// //                   //  width: size.width * 0.8,
// //                   //   height:185,
// //                    decoration: BoxDecoration(
// //                      borderRadius:BorderRadius.circular(10),
// //                      image:DecorationImage(
// //                            fit: BoxFit.fill,
// //                            image: AssetImage( pilgrims[index].image))
// //                    ),

// //                     alignment: Alignment.bottomCenter, // This aligns the child of the container
// //                   child: Padding(
// //                    padding: EdgeInsets.only(left: 15.0,
// //                    bottom: 15), //some spacing to the child from bottom
// //                    child: Text( pilgrims[index].title.toUpperCase(),  style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white,backgroundColor:Colors.black.withOpacity(0.5), ).copyWith(letterSpacing: 1))
// //                   )

// //                     ),
// //                     onTap: () => Navigator.push(
// //                    context, MaterialPageRoute(
// //                     builder: (context) => PilgrimsBodyPage(
// //                      pilgrims:pilgrims[index],
// //                      ),
// //           //            ),
// //                        )

// //                ),
// //              )
// //              );
// //            }
// //             ),
// //             )
// //           )         child: Text( pilgrims[index].title.toUpperCase(),  style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white,backgroundColor:Colors.black.withOpacity(0.5), ).copyWith(letterSpacing: 1))
// //                   )

// //                     ),
// //                     onTap: () => Navigator.push(
// //                    context, MaterialPageRoute(
// //                     builder: (context) => PilgrimsBodyPage(
// //                      pilgrims:pilgrims[index],
// //                      ),
// //           //            ),
// //                        )

// //                ),
// //              )
// //              );
// //            }
// //             ),
// //             )
// //           )
//               )
//         ],
//       ),
Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text("Restaurants",style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
         // HeaderWithFAQS(size: size),
          Expanded(
            child: ListView.builder(
                itemCount: restaurant.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = restaurant[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(Icons.hotel_class_outlined,color: que.iconColor,),
                      title: Text(que.name),
                    
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height:10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             // Text("Phone :"),
                              Text(que.description),
                              
                            ],
                          ),
                            SizedBox(height:5.0),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Phone :"),
                              TextButton(onPressed: () async {
                            
                            final url = 'tel:${que.phone}';
                            
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                              child: Text(que.phone.toString())),
                              
                            ],
                          ),
                        ],
                      ),
                    
                    ),
                  );
                }),
     
          )
        ],
      ),
    );
  }
}
