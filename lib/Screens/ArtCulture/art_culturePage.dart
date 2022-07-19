import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culture.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturebodyPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class ArtCulturePage extends StatelessWidget {
  const ArtCulturePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Art & Culture',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: artculture.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      child: Card(
                        color: Colors.grey[200],
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Image.asset(artculture[index].image),
                            ListTile(
                              title: Text(artculture[index].title),
                              subtitle: Text(
                                artculture[index].subtitle,
                              ),
                              trailing: Icon(Icons.navigate_next),
                            ),
                          ],
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArtCultureBodyPage(
                            artculture: artculture[index],
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
                  //                   image:
                  //                       AssetImage(artculture[index].image))),
                  //           alignment: Alignment
                  //               .bottomCenter,
                  //           child: Padding(
                  //               padding: EdgeInsets.only(
                  //                   left: 15.0,
                  //                   bottom:
                  //                       15),
                  //               child:
                  //                   Text(artculture[index].title.toUpperCase(),
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
                  //             builder: (context) => ArtCultureBodyPage(
                  //               artculture: artculture[index],
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
