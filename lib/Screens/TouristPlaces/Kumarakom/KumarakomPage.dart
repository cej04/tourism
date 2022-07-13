import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Ayurveda/AyurvedaDetail.dart';
import 'package:ktmtourism/Screens/HomeStay/HomeStayPage.dart';
import 'package:ktmtourism/Screens/Hotel/HotelPage.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/KumarakomDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'CategoryPages/About/Kumarakom.dart';

class KumarakomPage extends StatelessWidget {
  const KumarakomPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List pages = [
     
     
    
      HomeStayPage(),
      HotelPage(),
    
    ];
    return Scaffold(
       appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MyAppBar(title: 'Kumarakom',),
        ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: 
            
            ListView.builder(
                itemCount: kumarakom.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0),
                      child: GestureDetector(
                        child: 
                        Card(
                          color: Colors.grey[200],
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          
                          child: Column(
                            children: [
                              Image.asset(kumarakom[index].imageU),
                              ListTile(
                                title: Text(kumarakom[index].title),
                               
                                    subtitle:Text( kumarakom[index].subtitle) ,
                                trailing: Icon(Icons.navigate_next),
                                
                              ),
                            ],
                          ),
                        ),
                      //   onTap: () =>
                      //    Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => pages[index]),
                      // ),
                        
                        
                        //  Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => KumarakomDetail(
                        //         kumarakom: kumarakom[index],
                        //       ),
                        //     )
                        //     ),
                        
                        // Container(
                        //     height: 200,
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10),
                        //         image: DecorationImage(
                        //             fit: BoxFit.fill,
                        //             image:
                        //                 AssetImage(kumarakom[index].imageU))),
                        //     alignment: Alignment.bottomCenter,
                        //     child: Padding(
                        //         padding:
                        //             EdgeInsets.only(left: 15.0, bottom: 15),
                        //         child:
                        //             Text(kumarakom[index].title.toUpperCase(),
                        //                 style: Theme.of(context)
                        //                     .textTheme
                        //                     .labelMedium
                        //                     ?.apply(
                        //                       color: Colors.white,
                        //                       backgroundColor:
                        //                           Colors.black.withOpacity(0.5),
                        //                     )
                        //                     .copyWith(letterSpacing: 1)))),
                        // onTap: () => Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => KumarakomDetail(
                        //         kumarakom: kumarakom[index],
                        //       ),
                        //       //            ),
                        //     )
                        //     ),
                      )
                      );
                }),
          )),
          

        ],
      ),
    );
  }
}
