import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_howToReach.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/AirDetails.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/RoadDetail.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/TrainDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

//import 'package:ktmtourism/header_how_to_reach.dart';

class HowToReachPage extends StatelessWidget {
  const HowToReachPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pages = [
      const AirDetailPage(),
      const TrainDetailPage(),
      const RoadDetailPage(),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: 
      AppBar(
      elevation: 0,
      // backgroundColor: backgroundColor,
      title:  Text(
        "How To Reach",
        // style: TextStyle(color: Colors.black),
      ),
      //  Row(
      //   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      //   children: [

      //   ],
      // ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/images/APPlogo2.png",
                fit: BoxFit.contain,
                // width: 70.0,
                // height: 70.0,
              )),
        ),
        PopupMenuButton(
          elevation: 5.0,
          // icon: Icon(
          //     Icons.more_vert), //don't specify icon if you want 3 dot menu
          // color: Color(0xFF757575),

          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "About Kottayam",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.explore_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Tourist Places",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 2,
              child: Row(
                children: [
                  Icon(
                    Icons.bed_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Stay in Kottayam",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 3,
              child: Row(
                children: [
                  Icon(
                    Icons.holiday_village,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Main Pilgrim Centers",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 4,
              child: Row(
                children: [
                  Icon(
                    Icons.flatware,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Culinary Delights",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 5,
              child: Row(
                children: [
                  Icon(
                    Icons.color_lens,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Produce",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 6,
              child: Row(
                children: [
                  Icon(
                    Icons.celebration_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Festivals",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 7,
              child: Row(
                children: [
                  Icon(
                    Icons.festival_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Art & Culture",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 8,
              child: Row(
                children: [
                  Icon(
                    Icons.commute_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "How to Reach",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 9,
              child: Row(
                children: [
                  Icon(
                    Icons.hotel_class_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Restaurants",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Shopping",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 11,
              child: Row(
                children: [
                  Icon(
                    Icons.local_hospital_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Hospital",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
          onSelected: (item) => SelectedItem(context, item),
        ),
        //  ChangeThemeButtonWidget(),
      ],
    ),
      // PreferredSize(
      //   preferredSize: const Size.fromHeight(50.0),
      //   child: const MyAppBar(),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           // HeaderWithHowToReach(size: size),
            Container(

                color: Colors.teal,

                child: _tabSection(context)),

            //HeaderWithHowToReach(size: size),
            // Expanded(
            //   child: GridView.builder(
            //      padding: const EdgeInsets.all(20),
            //     itemCount: howtoreach.length,
            //     gridDelegate:
            //     SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //     // mainAxisSpacing: kDefaultPadding,
            //     crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //     // childAspectRatio: 0.75,
            //     ),

            //   itemBuilder: (context,index) => HowToReachCard(
            //     howtoreach: howtoreach[index],
            //      press: () =>  Navigator.push(context, MaterialPageRoute(
            //          builder: (context) => pages[index]
            //            ),
            //         ),
            //   )
            //   ),
            //   )

            // Padding(
            //     padding: const EdgeInsets.all(kDefaultPadding),
            //     child: ReadMoreText(
            //         "Backwater Ferry Services:There are two ferry stations.The Town Jetty is about 3 km from the railway station and operates services during the monsoon.During summer,boats are operated from the Kodimatha Jetty.",
            //         textAlign: TextAlign.justify,
            //         style: Theme.of(context)
            //             .textTheme
            //             .bodyText2
            //             ?.apply(
            //               color: Colors.black,
            //             )
            //             .copyWith(height: 1.8),
            //         trimLines: 6,
            //         colorClickableText: Colors.blue,
            //         trimMode: TrimMode.Line,
            //         trimCollapsedText: 'Read more',
            //         trimExpandedText: 'Show less',
            //         moreStyle: TextStyle(
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.blue),
            //         lessStyle: TextStyle(
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.blue))),

            // Expanded(
            //     child: GridView.builder(
            //   itemCount: howtoreach.length,
            //   itemBuilder: (context, index) {
            //     return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: GestureDetector(
            //           child: Container(

            //               // height: 200,
            //               //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
            //               //  width: size.width * 0.8,
            //               //   height:185,
            //               //  decoration: BoxDecoration(
            //               //    borderRadius:BorderRadius.circular(10),
            //               //    image:DecorationImage(
            //               //          fit: BoxFit.fill,
            //               //          image: AssetImage( howtoreach[index].image))
            //               //  ),

            //               //   margin: EdgeInsets.all(10),
            //               padding: EdgeInsets.all(10),
            //               alignment: Alignment.center,
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 border: Border.all(
            //                     //color: Colors.pink[800], // Set border color
            //                     width: 0.0), // Set border width
            //                 borderRadius: BorderRadius.all(Radius.circular(
            //                     10.0)), // Set rounded corner radius
            //                 // boxShadow: [
            //                 //   BoxShadow(
            //                 //blurRadius: 10,
            //                 //color: Colors.black,
            //                 //offset: Offset(1,3))
            //                 //   ] // Make rounded corner of border
            //               ), // This aligns the child of the container
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
            //                 children: [
            //                   Icon(howtoreach[index].icon),
            //                   Text(howtoreach[index].title.toUpperCase(),
            //                       style: Theme.of(context).textTheme.titleSmall)
            //                 ],
            //               )),
            //           onTap: () => Navigator.push(
            //               context,
            //               MaterialPageRoute(builder: (context) => pages[index]
            //                   //            ),
            //                   )),
            //         ));
            //   },
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     // mainAxisSpacing: kDefaultPadding,
            //     //crossAxisSpacing: 1,
            //     // mainAxisSpacing: 10,
            //     childAspectRatio: (1 / .9),
            //   ),
            // )),
            //       Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             child: Padding(
            //                 padding: const EdgeInsets.all(kDefaultPadding),
            //                 child: ReadMoreText("Backwater Ferry Services:There are two ferry stations.The Town Jetty is about 3 km from the railway station and operates services during the monsoon.During summer,boats are operated from the Kodimatha Jetty.",
            //                     textAlign: TextAlign.justify,
            //                    style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),
            //                     trimLines: 6,
            //                     colorClickableText: Colors.blue,
            //                     trimMode: TrimMode.Line,
            //                     trimCollapsedText: 'Read more',
            //                     trimExpandedText: 'Show less',
            //                     moreStyle: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.blue),
            //                     lessStyle: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.blue))
            //             )
            // //          Text.rich(

            // //   TextSpan(

            // //                    style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),
            // //     children: [
            // //       TextSpan(text: 'Backwater Ferry Services: ', style: TextStyle(fontWeight: FontWeight.bold)),
            // //       TextSpan(
            // //         text: 'There are two ferry stations.The Town Jetty is about 3 km from the railway station and operates services during the monsoon.During summer,boats are operated from the Kodimatha Jetty.',

            // //       ),
            // //       TextSpan(text: ' world!'),
            // //     ],
            // //   ),
            // // )
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 4,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
          labelColor: Colors.white,
          //isScrollable: true,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.bus_alert), text: "By Road"),
            Tab(
              icon: Icon(Icons.train),
              text: "By Train",
            ),
            Tab(
              icon: Icon(Icons.flight),
              text: "By Air",
            ),
            Tab(icon: Icon(Icons.sailing), text: "Backwater Ferry Services"),

            // Tab(
            //   text: "Mundakkayam",
            // ),
          ],
        ),
        // SizedBox(
        //   height: 30,
        // ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height / 2,
          child: TabBarView(children: [
            const RoadDetailPage(),
            const TrainDetailPage(),
            const AirDetailPage(),
            // const ListViewChanganacherry(),
            // const ListViewEttumanoor(),
            // const ListViewVaikom(),
            const FerryServise(),
            //const ListViewMundakkayam(),
          ]),
        ),
      ],
    ),
  );
}

class FerryServise extends StatelessWidget {
  const FerryServise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          // height: MediaQuery.of(context).size.height/2,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color(0xFFFFF7EC), borderRadius: BorderRadius.circular(20)),
    
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.sailing,
                color: Color.fromARGB(255, 236, 199, 119),
                size: 35,
              ),
              SizedBox(
                height: 10,
              ),
              //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
              // ,
    
              //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),
    
              Text(
                "There are two ferry stations.\n\nThe Town Jetty is about 3 km from the railway station and operates services during the monsoon.\n\nDuring summer,boats are operated from the Kodimatha Jetty."
                    .toString(),
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          //     height: MediaQuery.of(context).size.height/18,
          //    child:
    
          // Image.asset(restaurant.image,)
        ),
      ),
    );
    //    Padding(
    //  padding: const EdgeInsets.all(25.0),
    //  child: Container(
    //    // height: MediaQuery.of(context).size.height/3,
    //    padding: EdgeInsets.all(15),
    //    decoration: BoxDecoration(color: Color.fromARGB(255, 236, 199, 119),
    //    borderRadius: BorderRadius.circular(20)
    //    ),
    //    child: IntrinsicHeight(
    //      child: Text(
    //           "Backwater Ferry Services:There are two ferry stations.The Town Jetty is about 3 km from the railway station and operates services during the monsoon.During summer,boats are operated from the Kodimatha Jetty."),
    //    ) ,
    //  ),);
  }
}
