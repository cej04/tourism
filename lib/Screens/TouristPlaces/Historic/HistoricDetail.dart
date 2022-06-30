import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/historic.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/map_utils.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class HistoricScreen extends StatelessWidget {
  final Historic historic;
  HistoricScreen({Key? key, required this.historic}) : super(key: key);

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
              child: Text(historic.title,
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
                image: AssetImage(historic.imageU),
                fit: BoxFit.fill,

                //alignment: Alignment.topCenter,
              ),
            ),
           
          ),
          GestureDetector(
            onTap: () {
              MapUtils.openMap(historic.lat, historic.long);
            },
            child: Container(

                
                height: MediaQuery.of(context).size.height / 14.5,
              
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
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: ReadMoreText(historic.Desc,
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
                       
                        ),
                  ),
                ),

                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("How To Reach",
                          style: Theme.of(context).textTheme.titleSmall),
                    
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

                          
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.flight),
                                Text("By Air",
                                    style:
                                        Theme.of(context).textTheme.titleSmall)
                              ],
                            ),
                            itemBuilder: (context) {
                              return <PopupMenuItem>[
                                new PopupMenuItem(
                                    child: Text(historic.AirDesc))
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.train),
                                Text("By Train",
                                    style:
                                        Theme.of(context).textTheme.titleSmall)
                              ],
                            ),
                            itemBuilder: (context) {
                              return <PopupMenuItem>[
                                new PopupMenuItem(
                                    child: Text(historic.TrainDesc))
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.bus_alert),
                                Text("By Bus",
                                    style:
                                        Theme.of(context).textTheme.titleSmall)
                              ],
                            ),
                            itemBuilder: (context) {
                              return <PopupMenuItem>[
                                new PopupMenuItem(
                                    child: Text(historic.RoadDesc))
                              ];
                            },
                          ),
                        ),
                        
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
                          String activity = historic.activities[index];

                          return Row(
                            
                            children: [
                              Container(
                                  //alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 3,
                                  height: MediaQuery.of(context).size.height,
                                  child: Image.asset(
                                    activity,
                                    fit: BoxFit.cover,
                                  )),
                             
                            ],
                          );
                        },
                        separatorBuilder: (_, index) => const SizedBox(
                              width: 10.0,
                            ),
                        itemCount: historic.activities.length),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

               
              ],
            ),
          ),
        
        ],
      ),
     
    );
  }
}