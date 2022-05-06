import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachRoad/Road.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class RoadDetailPage extends StatelessWidget {
  const RoadDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
         appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: const MyAppBar(),
      ),
        body: Column(
           mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 20,),
      
            Container(
              child: Text("By Road",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/road.jpg"),
                  fit: BoxFit.fill,

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(child: Text("K S R T C  BUS STATIONS",style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),),
            )
           
            ,Flexible(
              flex: 1,
                  fit: FlexFit.tight,
              child: ListView.builder(
              //shrinkWrap: true,
                itemCount: road.length,
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 1,
                // ),
                itemBuilder: (context, index) => RoadDetailCard(road: road[index]),
            
              ),
            ),

          
          ],
        )


        );
  }
}

class RoadDetailCard extends StatelessWidget {
  final Road road;
  const RoadDetailCard({
    Key? key,
    required this.road,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.max,
      
      children: [
        SizedBox(
          height: 20,
        ),
        Card(
          color:Colors.grey,
          //margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(road.title,textAlign: TextAlign.center,style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black,)),
          ),
        ),
        SizedBox(height: 20,),
        Container(
   
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                
                TextSpan(
                    text: 'Phone :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: road.phone.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                         
                        TextSpan(
                    text: '\n\nPincode :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: road.pincode.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
          ),
        ),
     
      ]
    );

  
  }
}
