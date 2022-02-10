import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/aboutktm.jpeg",
      "assets/images/vembanattu kayal.jpg",
      "assets/images/tajhotel.jpg",
      "assets/images/bhmchurch.jpg",
      "assets/images/sadhya.png",
      "assets/images/woodshaped.jpg",
      "assets/images/onam.jpg",
      "assets/images/koodiyattam.jpg",
      "assets/images/reachktm.png",
    ];
    // List<String> imgcontent = [
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/about.jpg",
    //   "assets/images/reachktm.png",

    // ];
    List<String> imgtitles = [
      "About Kottayam",
      "Tourist Places",
      "Stay in Kotayam",
      "Main Pilgrim Centers",
      "Culinary Delights",
      "Produce",
      "Festivals",
      "Art and Culture",
      "How to Reach",
    ];
    List<IconData> imgicons = [
      Icons.info,
      Icons.explore_outlined,
      Icons.bed_rounded,
      Icons.holiday_village,
      Icons.flatware,
      Icons.color_lens,
      Icons.celebration_rounded,
      Icons.festival_outlined,
      Icons.commute_outlined,
    ];

    return ListView.separated(
      separatorBuilder: (context, index) =>
          // SizedBox(
          //   height: 50.0,
          //   child: Text(images[index]),
          // ),
          //      Divider(indent: 2.0,
          //     height: 50.0,
          // thickness:2.0 ,
          // color: Colors.black,
          // ),
          DottedLine(
        direction: Axis.horizontal,
        lineLength: double.infinity,
        lineThickness: 2.0,
        dashLength: 4.0,
        dashColor: Colors.black,
        //dashGradient: [Colors.red, Colors.blue],
        //dashRadius: 0.0,
        // dashGapLength: 4.0,
        // dashGapColor: Colors.transparent,
        //dashGapGradient: [Colors.red, Colors.blue],
        // dashGapRadius: 0.0,
      ),
      itemCount: images.length,
      itemBuilder: (BuildContext context, index) {
        return Card(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Icon(imgicons[index]),
                  ),
                  Text(imgtitles[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ],
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                    //alignment: Alignment.topCenter,
                  ),
                ),
              ),

              //Image.asset(images[index]),
              // SizedBox(height: 10,),
              // Icon(
              //   Icons.favorite,
              //   color: Colors.red,
              //   size: 50,
              // ),
            ],
          ),

          // child: Container(

          //      height: 250,
          //          decoration: BoxDecoration(
          //            image: DecorationImage(
          //              image: AssetImage(images[index]),
          //              fit: BoxFit.cover,
          //              //alignment: Alignment.topCenter,
          //            ),
          //          ),

          //       // ),

          //              ),
        );
      },
    );
  }
}
// title: Text(images[index],
//     style: TextStyle(fontWeight: FontWeight.bold)),
// subtitle: Text(images[index]),

// // leading: CircleAvatar(
// //   backgroundImage: AssetImage(images[index]),
// // ),
// trailing: Icon(Icons.push_pin),
