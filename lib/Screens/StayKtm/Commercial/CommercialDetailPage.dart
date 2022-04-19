import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';

import 'package:readmore/readmore.dart';

import '../../../Utils/constants.dart';

//import '../../culinary_bodyPage.dart';

class commercialDetailsPage extends StatelessWidget {
  final Commercial commercial;
  const commercialDetailsPage({ Key? key,required this.commercial }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
                onPressed: () {
                  //  PopupMenuButton(
                  //     itemBuilder: (context) => [
                  //       PopupMenuItem(
                  //         child: Text("First"),
                  //         value: 1,
                  //       ),
                  //       PopupMenuItem(
                  //         child: Text("Second"),
                  //         value: 2,
                  //       )
                  //     ]
                  // );
                },
              ),
            ),
            Text("Kottayam Tourism",style: TextStyle(color:Colors.black),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/APPlogo2.png",
                    fit: BoxFit.cover,
                    // width: 70.0,
                    // height: 70.0,
                  )),
            ),
          ],
        ),
        actions: [],
      ),
      body:SingleChildScrollView(
      child: Column(
        children: [
         // const SizedBox(width: 10,),
          // Text(commercial.title,
          //     style:
          //         const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Container(
              child:
               Text(commercial.title,
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
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(commercial.image),
                fit: BoxFit.fill,

                //alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Icon(Icons.location_on,color: Colors.red,),
                title: Text('Address',style: Theme.of(context).textTheme.headline6,),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(commercial.address,style: TextStyle(color: Colors.blue)),
                ),
              ),
            ],
              ),
              ),
            
                
                Card(
                   child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Icon(Icons.push_pin_rounded ,color: Colors.orange,),
                title: Text('Pincode',style: Theme.of(context).textTheme.headline6,),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(commercial.pin.toString(),style: TextStyle(color: Colors.blue)),
                ),
              ),
            ],
              ),
                ),
                 Card(
                   child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Icon(Icons.local_phone_rounded ,color: Colors.grey,),
                title: Text('Phone',style: Theme.of(context).textTheme.headline6,),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(commercial.phone.toString(),style: TextStyle(color: Colors.blue)),
                ),
              ),
            ],
              ),
                ),
                Card(
                   child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Icon(Icons.mail_outline_rounded ,color: Colors.green,),
                title: Text('Email',style: Theme.of(context).textTheme.headline6,),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(commercial.email.toString(),style: TextStyle(color: Colors.blue)),
                ),
              ),
            ],
              ),
                ),
                Card(
                   child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Icon(Icons.web ,color: Colors.red,),
                title: Text('Website',style: Theme.of(context).textTheme.headline6,),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(commercial.website.toString(),style: TextStyle(color: Colors.blue)),
                ),
              ),
            ],
              ),
                )
              ],
            ),
          )
//           Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               //SizedBox(height: 10,),
          
//               Padding(
//                 padding: const EdgeInsets.all(kDefaultPadding),
//                 child: Expanded(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.start,
                  
//                     children: [
//                                           Icon(imgicons[0]),
                
//                       Text(
//                         "Address:",
//                         style: Theme.of(context).textTheme.headline6,
//                       ),
//                        Text(
//                         commercial.address,
//                         textAlign: TextAlign.justify,
//                         softWrap: true,
                        
//                         maxLines: 2,
//                         style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.blue),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   child: Padding(
//                     padding: const EdgeInsets.all(kDefaultPadding),
//                     child: 
//                     ReadMoreText(
//                       commercial.address,
//                        textAlign: TextAlign.justify,
//                       style: TextStyle(color: Colors.black),
//   trimLines: 6,
//   colorClickableText: Colors.blue,
//   trimMode: TrimMode.Line,
//   trimCollapsedText: 'Read more',
//   trimExpandedText: 'Show less',
//   moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),
//   lessStyle:TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue)
// )
                    
//                   ),
//                 ),
//               ),
//               Container()

//             ],
//           ),
          
        ],
      ),
    )
    );
  }
}