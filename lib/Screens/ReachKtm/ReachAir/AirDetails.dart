import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/Air.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class AirDetailPage extends StatelessWidget {
  const AirDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: const MyAppBar(),
      ),
        body: Column(
           mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 20,),
            // const SizedBox(width: 10,),
            // Text(commercial.title,
            //     style:
            //         const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
            Container(
              child: Text("By Air",
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
               // borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/airplane.jpg"),
                  fit: BoxFit.fill,

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(child: Text("Nearest airport is Cochin International Airport, Ernakulam District (90 Km)\n\nTrivandrum International Airport, Thiruvananthapuram District (160 Km)",
              
                                      style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),

                          
                          ),
                          
                          ),
            )
           
            ,Flexible(
              flex: 1,
                  fit: FlexFit.tight,
              child: ListView.builder(
              shrinkWrap: true,
                itemCount: air.length,
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 1,
                // ),
                itemBuilder: (context, index) => DetailCard(air: air[index]),
            
              ),
            ),

          
          ],
        )


        );
  }
}

class DetailCard extends StatelessWidget {
  final Air air;
  const DetailCard({
    Key? key,
    required this.air,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(air.title,textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),

                        
                        ),
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
                    text: air.phone.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                         TextSpan(
                    text: '\n\nWebsite :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: air.weblink,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                        TextSpan(
                    text: '\n\nPincode :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: air.pincode.toString(),
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

