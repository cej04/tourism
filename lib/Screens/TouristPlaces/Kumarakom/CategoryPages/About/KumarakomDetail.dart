import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:readmore/readmore.dart';

class KumarakomDetails extends StatelessWidget {
  List KumarakomImg =[
        "assets/images/kumarakom.jpg",
        "assets/images/kumarakom1.jpg",
        "assets/images/kumarakom2.jpg",
        "assets/images/kumarakom3.jpg",
        "assets/images/kumarakom4.jpg"
      ];
 // final Kumarakom kumarakom;

   KumarakomDetails({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: const Size.fromHeight(kToolbarHeight),
        //   child: MyAppBar(),
        // ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                child: Text("kumarakom",
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
                //borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/kumarakom3.jpg"),
                  fit: BoxFit.fill,

                  //alignment: Alignment.topCenter,
                ),
              ),
              //           child:  new Stack(
              //     children: <Widget>[

              //       new Positioned(
              //         right: 0.0,
              //         bottom: 0.0,
              //         child:
              //         FloatingActionButton.extended(

              //   onPressed: () {
              //    MapUtils.openMap(recreational.lat, recreational.long);

              //   },

              //   label: const Text(''),
              //   icon: const Icon(Icons.location_on_rounded,color: Colors.teal,size: 50,),
              //   backgroundColor: Colors.white,
              //   elevation: 0,
              // ),
              //       ),
              //     ],
              //   ),
            ),
            GestureDetector(
              onTap: () {
                MapUtils.openMap( 9.583331, 76.4333316);
              },
              child: Container(

                  // width: MediaQuery.of(context).size.width/6.5,
                  height: MediaQuery.of(context).size.height / 14.5,
                  //                 duration: const Duration(seconds: 2),
                  // foregroundDecoration: BoxDecoration(
                  //   //color: _isInitialValue ? Colors.blue : Colors.red,
                  //   border: Border.all(width: _isInitialValue ? 0 : 10),
                  // ),
                  child: Image.asset(
                    'assets/images/location1.png',
                    fit: BoxFit.fill,
                  )),
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
                          child: ReadMoreText( "Kumarakom gained national and international importance with the visit of the Hon’ble Prime minister A.B. Vajpayee in 2000 December.\n\nKumarakom is a small village 14 km. west of Kottayam. It is a part of Kuttanad, which is a ‘ wonder land ‘, lying below sea level, comprising of a number of islands, in the back waters. Kumarakom Village covers an area of 5166 Ha of which 2413 Ha is lake portion, 1500 Ha is paddy fields and the remaining portion of 1253 Ha is dry land. Kumarakom is an unbelievably beautiful paradise of mangrove forests, emerald green paddy fields and coconut groves interspersed with enchanting waterways and canals adorned with white lilies. Situated on the Vembanad Lake, this small water world has plenty of traditional country boats, crafts and canoes which will take you in to the heart of scenic Kerala. The resorts near by offer comfortable accommodation and exclusive leisure options like Ayurvedic massages, Yoga and meditation besides boating, fishing, angling and swimming.\n\nIn the last Century, Henry Baker, an English man, attracted by the beauty of the place, selected Kumarakom as his residence and built a bungalow, obtaining 104 acres of land from the then Maharaja of Travancore. He also made a beautiful garden. Preserving the old style, the beautiful bungalow of Baker has now been modified into the Taj Garden Retreat, a hotel with modern living facilities. The Kerala State Tourism Development Corporation is converting this place into a Tourist Complex. K.T.D.C. has constructed A.C. Cottages here and it runs a floating restaurant. The Corporation also provides boating facilities.",
                              textAlign: TextAlign.justify,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.apply(
                                    color: Colors.black,
                                  )
                                  .copyWith(height: 1.8),
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
                            style: Theme.of(context).textTheme.titleSmall),
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
                      height: MediaQuery.of(context).size.height / 8,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            // margin: EdgeInsets.symmetric(vertical: 10),
                            width: MediaQuery.of(context).size.width / 3,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.flight),
                                  Text("By Air",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall)
                                ],
                              ),
                              itemBuilder: (context) {
                                return <PopupMenuItem>[
                                  new PopupMenuItem(
                                      child: Text( "Nearest airports are :\n\n Cochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport,\n\n Thiruvananthapuram District (163.8 Km)"))
                                ];
                              },
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.train),
                                  Text("By Train",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall)
                                ],
                              ),
                              itemBuilder: (context) {
                                return <PopupMenuItem>[
                                  new PopupMenuItem(
                                      child: Text(  "Railway Station Kottayam (16 Km) \n\n(Enquiry : 0481-2563535, 2567360, 2567491)"))
                                ];
                              },
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.bus_alert),
                                  Text("By Bus",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall)
                                ],
                              ),
                              itemBuilder: (context) {
                                return <PopupMenuItem>[
                                  new PopupMenuItem(
                                      child: Text("KSRTC, Kottayam (15 Km)\n\n (Enquiry:0481 2562908)"))
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
                            style: Theme.of(context).textTheme.titleSmall),
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
                      height: MediaQuery.of(context).size.height / 6,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            String activity =
                               KumarakomImg[index];

                            return Row(
                              //     crossAxisAlignment: CrossAxisAlignment.center,
                              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    //alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
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
                          itemCount: KumarakomImg.length),
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
