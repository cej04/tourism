import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Kumarakom/KumarakomDetail.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'CategoryPages/About/Kumarakom.dart';

class KumarakomPage extends StatelessWidget {
  const KumarakomPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),
      //   child: MyAppBar(),
      // ),
      body: Column(
        children: [
         // HeaderWithReligious(size: size),
          // Expanded(
          //   child: GridView.builder(
          //      padding: const EdgeInsets.all(20),
          //     itemCount: religious.length,
          //     gridDelegate:
          //     const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //     // mainAxisSpacing: kDefaultPadding,
          //     crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //     // childAspectRatio: 0.75,
          //     ),

          //   itemBuilder: (context,index)  => ReligiousCard(
          //     religious: religious[index],
          //      press: () => Navigator.push(
          //        context, MaterialPageRoute(
          //          builder: (context) => ReligiousDetails(
          //            religious:religious[index],
          //            ),
          //            ),
          //      ),
          //   )
          //   ),
          //   )

          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: kumarakom.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(
                            height: 200,
                            //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
                            //  width: size.width * 0.8,
                            //   height:185,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage(kumarakom[index].imageU))),
                            alignment: Alignment
                                .bottomCenter, // This aligns the child of the container
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom:
                                        15), //some spacing to the child from bottom
                                child:
                                    Text(kumarakom[index].title.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.apply(
                                              color: Colors.white,
                                              backgroundColor:
                                                  Colors.black.withOpacity(0.5),
                                            )
                                            .copyWith(letterSpacing: 1)))),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KumarakomDetail(
                                kumarakom: kumarakom[index],
                              ),
                              //            ),
                            )),
                      ));
                }),
          ))
        ],
      ),
    );
  }
}
// class KumarakomPage extends StatelessWidget {
//   const KumarakomPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Column(children: [
//       Container(
//         height: 200.0,
//         // color: Colors.blue,
//         child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: kumarakom.length,
//             itemBuilder: (BuildContext context, int index) {
//               Kumarakom kumarakoms = kumarakom[index];
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) {
//                       return KumarakomDetail(
//                         kumarakom: kumarakoms,
//                       );
//                     }),
//                   );
//                 },
//                 child: Container(
//                     margin: const EdgeInsets.only(
//                         left: kDefaultPadding,
//                         top: kDefaultPadding / 2,
//                         bottom: kDefaultPadding / 2),
//                     width: size.width * 0.8,
//                     height: 185,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage(kumarakoms.imageU))),
//                     alignment: Alignment
//                         .bottomCenter, // This aligns the child of the container
//                     child: Padding(
//                         padding: const EdgeInsets.only(
//                             left: 15.0,
//                             bottom: 15), //some spacing to the child from bottom
//                         child: Text(kumarakoms.title.toUpperCase(),
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .caption
//                                 ?.apply(
//                                   color: Colors.white,
//                                   backgroundColor:
//                                       Colors.black.withOpacity(0.5),
//                                 )
//                                 .copyWith(letterSpacing: 1)))),
//               );
//             }),
//       )
//     ]);
//   }
// }


// class KumarakomPage extends StatelessWidget {
//   const KumarakomPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Column(children: [
//       Container(
//         height: 200.0,
//         // color: Colors.blue,
//         child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: kumarakom.length,
//             itemBuilder: (BuildContext context, int index) {
//               Kumarakom kumarakoms = kumarakom[index];
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) {
//                       return KumarakomDetail(
//                         kumarakom: kumarakoms,
//                       );
//                     }),
//                   );
//                 },
//                 child: Container(
//                     margin: const EdgeInsets.only(
//                         left: kDefaultPadding,
//                         top: kDefaultPadding / 2,
//                         bottom: kDefaultPadding / 2),
//                     width: size.width * 0.8,
//                     height: 185,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage(kumarakoms.imageU))),
//                     alignment: Alignment
//                         .bottomCenter, // This aligns the child of the container
//                     child: Padding(
//                         padding: const EdgeInsets.only(
//                             left: 15.0,
//                             bottom: 15), //some spacing to the child from bottom
//                         child: Text(kumarakoms.title.toUpperCase(),
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .caption
//                                 ?.apply(
//                                   color: Colors.white,
//                                   backgroundColor:
//                                       Colors.black.withOpacity(0.5),
//                                 )
//                                 .copyWith(letterSpacing: 1)))),
//               );
//             }),
//       )
//     ]);
//   }
// }
