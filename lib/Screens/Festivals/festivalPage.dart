import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Festivals/festivals.dart';
import 'package:ktmtourism/Screens/Festivals/festivalsBodyPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class FestivalPage extends StatelessWidget {
  const FestivalPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    appBar:AppBar(   
      title: Text("Festivals"),     
    automaticallyImplyLeading: false,
    leading: Navigator.canPop(context)
        ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        : null,
),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: festivals.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      child: Card(
                   //     color: Colors.grey[200],
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Image.asset(festivals[index].image),
                            ListTile(
                              title: Text(festivals[index].title),
                              subtitle: Text(
                                festivals[index].subtitle,
                              ),
                              trailing: Icon(Icons.navigate_next),
                            ),
                          ],
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FestivalsBodyPage(
                            festivals: festivals[index],
                          ),
                        ),
                      ),
                    ),
                  );

                  // return Padding(
                  //     padding: const EdgeInsets.all(25.0),
                  //     child: GestureDetector(
                  //       child: Container(
                  //           height: 200,

                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(10),
                  //               image: DecorationImage(
                  //                   fit: BoxFit.fill,
                  //                   image: AssetImage(festivals[index].image))),
                  //           alignment: Alignment
                  //               .bottomCenter,
                  //           child: Padding(
                  //               padding: EdgeInsets.only(
                  //                   left: 15.0,
                  //                   bottom:
                  //                       15),
                  //               child:
                  //                   Text(festivals[index].title.toUpperCase(),
                  //                       style: Theme.of(context)
                  //                           .textTheme
                  //                           .labelMedium
                  //                           ?.apply(
                  //                             color: Colors.white,
                  //                             backgroundColor:
                  //                                 Colors.black.withOpacity(0.5),
                  //                           )
                  //                           .copyWith(letterSpacing: 1)))),
                  //       onTap: () => Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => FestivalsBodyPage(
                  //               festivals: festivals[index],
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
