import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Ayurveda/Ayurveda.dart';
import 'package:ktmtourism/Screens/Ayurveda/AyurvedaDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class AyurvedaPage extends StatefulWidget {
  const AyurvedaPage({Key? key}) : super(key: key);

  @override
  _AyurvedaPageState createState() => _AyurvedaPageState();
}

class _AyurvedaPageState extends State<AyurvedaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(title: 'Ayurveda Center',),
        ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: ayurveda.length,
                itemBuilder: (context, index) {
                  return 
                  Padding(
                         padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AyuvedaDetail(
                                ayurveda: ayurveda[index],
                              ),
                            ));
                    
                        
                      }),
                      child: Card(
                                  color: Colors.grey[200],
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            children: [
                              Stack(
                                      children: [
                                        Ink.image(image: AssetImage(ayurveda[index].image),
                                        // Image.network(
                                        //     'https://www.kindacode.com/wp-content/uploads/2020/10/sample.jpg',
                                            width: double.infinity,
                                            height: 250,
                                            fit: BoxFit.cover
                                            ),
                                        Positioned(
                                          // The Positioned widget is used to position the text inside the Stack widget
                                          top: 0.0,
                                          right: 0.0,
                                              
                                          child: Container(
                                            // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                          //  width: 300,
                                            color: Colors.orangeAccent,
                                           
                                            child:  Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                              ayurveda[index].classification,
                              style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                              
                                      ],
                                              ),
                                     ListTile(
                                      title: Text(ayurveda[index].name),
                                      subtitle: Text(ayurveda[index].address),
                                      // leading: ElevatedButton(
                                      //     child: Text("Book"),
                                      //    onPressed:() {}
                                      //     // onPressed: () async {
                                      //     //   final Uri url = Uri.parse(
                                      //     //       ayurveda[index].bookingurl);
                                      //     //   if (await canLaunchUrl(url)) {
                                      //     //     await launchUrl(url);
                                      //     //   }
                                      //    // }
                                      //     ),
                                      trailing: Icon(Icons.navigate_next),
                                      
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  
                  // Padding(
                  //     padding: const EdgeInsets.only(
                  //         left: 20.0, right: 20.0, top: 20.0),
                  //     child: GestureDetector(
                  //       child: Card(
                  //         color: Colors.grey[200],
                  //         clipBehavior: Clip.antiAlias,
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                          
                  //         child: Column(
                  //           children: [
                  //             Image.asset(ayurveda[index].image),
                  //             ListTile(
                  //               // title: Text(ayurveda[index].name),
                  //               // leading: ElevatedButton(
                  //               //     child: Text("Book"),
                  //               //    onPressed:() {}
                  //               //     // onPressed: () async {
                  //               //     //   final Uri url = Uri.parse(
                  //               //     //       ayurveda[index].bookingurl);
                  //               //     //   if (await canLaunchUrl(url)) {
                  //               //     //     await launchUrl(url);
                  //               //     //   }
                  //               //    // }
                  //               //     ),
                  //               trailing: Icon(Icons.navigate_next),
                                
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       onTap: () => Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => AyuvedaDetail(
                  //               ayurveda: ayurveda[index],
                  //             ),
                  //           )),
                  //     ));
                }),
          ))
        ],
      ),
    );
  }
}
