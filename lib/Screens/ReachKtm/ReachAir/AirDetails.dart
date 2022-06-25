import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachAir/Air.dart';

class AirDetailPage extends StatelessWidget {
  const AirDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        //  appBar: PreferredSize(
        //   preferredSize: const Size.fromHeight(50.0),
        //   child: const MyAppBar(),
        // ),
        body: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        // SizedBox(height: 20,),
        // // const SizedBox(width: 10,),
        // // Text(commercial.title,
        // //     style:
        // //         const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
        // Container(
        //   child: Text("By Air",
        //       style: Theme.of(context).textTheme.headline6?.copyWith(
        //           color: Colors.black, fontWeight: FontWeight.bold)),
        // ),
        // SizedBox(height: 20,),
        // Container(
        //   height: 200,
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black,
        //         blurRadius: 6.0,
        //       ),
        //     ],
        //    // borderRadius: BorderRadius.circular(10),
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/airplane.jpg"),
        //       fit: BoxFit.fill,

        //     ),
        //   ),
        // ),
        // SizedBox(height: 20,),
        // Padding(
        //   padding: const EdgeInsets.all(15.0),
        //   child: Container(child: Text("Nearest airport is Cochin International Airport, Ernakulam District (90 Km)\n\nTrivandrum International Airport, Thiruvananthapuram District (160 Km)",

        //                           style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),

        //               ),

        //               ),
        // )

        Flexible(
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
    ));
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
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        // height: MediaQuery.of(context).size.height/4,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: air.bgcolor, borderRadius: BorderRadius.circular(20)),

        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.bus_alert,
                color: air.iconColor,
                size: 35,
              ),
              SizedBox(
                height: 10,
              ),
              //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
              // ,

              //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),

              Text(
                air.title.toString(),
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //      //Text("Tariff : "),
              //     Text(road.title.toString(),style: Theme.of(context).textTheme.subtitle1),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("phone : "),
                  Text(air.phone.toString(),
                      style: Theme.of(context).textTheme.subtitle1)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("pincode : "),
                  Text(air.pincode.toString(),
                      style: Theme.of(context).textTheme.subtitle1)
                ],
              ),
            ],
          ),
        ),
        //     height: MediaQuery.of(context).size.height/18,
        //    child:

        // Image.asset(restaurant.image,)
      ),
    );

    //  Column(
    //   mainAxisSize: MainAxisSize.max,

    //   children: [
    //     SizedBox(
    //       height: 20,
    //     ),
    //     Card(
    //       color:Colors.grey,
    //       child: Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Text(air.title,textAlign: TextAlign.center,
    //                                 style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),

    //                     ),
    //       ),
    //     ),
    //     SizedBox(height: 20,),
    //     Container(

    //       child: RichText(
    //         text: TextSpan(
    //           children: <TextSpan>[

    //             TextSpan(
    //                 text: 'Phone :  ',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.bold, color: Colors.black)),
    //             TextSpan(
    //                 text: air.phone.toString(),
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.bold, color: Colors.black)),
    //                      TextSpan(
    //                 text: '\n\nWebsite :  ',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.bold, color: Colors.black)),
    //             TextSpan(
    //                 text: air.weblink,
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.bold, color: Colors.black)),
    //                     TextSpan(
    //                 text: '\n\nPincode :  ',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.bold, color: Colors.black)),
    //             TextSpan(
    //                 text: air.pincode.toString(),
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.bold, color: Colors.black)),
    //           ],
    //         ),
    //       ),
    //     ),

    //   ]
    // );
  }
}
