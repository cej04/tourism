import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Culinary/culinary.dart';
import 'package:ktmtourism/Screens/Culinary/culinary_bodyPage.dart';
import 'package:ktmtourism/Screens/Headers/header_culinary.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class CulinaryDelightPage extends StatelessWidget {
  const CulinaryDelightPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: 
      AppBar(
      elevation: 0,
      // backgroundColor: backgroundColor,
      title:  Text(
        "Culinary Delights",
        // style: TextStyle(color: Colors.black),
      ),
      //  Row(
      //   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      //   children: [

      //   ],
      // ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/images/APPlogo2.png",
                fit: BoxFit.contain,
                // width: 70.0,
                // height: 70.0,
              )),
        ),
        PopupMenuButton(
          elevation: 5.0,
          // icon: Icon(
          //     Icons.more_vert), //don't specify icon if you want 3 dot menu
          // color: Color(0xFF757575),

          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "About Kottayam",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.explore_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Tourist Places",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 2,
              child: Row(
                children: [
                  Icon(
                    Icons.bed_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Stay in Kottayam",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 3,
              child: Row(
                children: [
                  Icon(
                    Icons.holiday_village,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Main Pilgrim Centers",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 4,
              child: Row(
                children: [
                  Icon(
                    Icons.flatware,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Culinary Delights",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 5,
              child: Row(
                children: [
                  Icon(
                    Icons.color_lens,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Produce",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 6,
              child: Row(
                children: [
                  Icon(
                    Icons.celebration_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Festivals",
                    //style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 7,
              child: Row(
                children: [
                  Icon(
                    Icons.festival_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Art & Culture",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 8,
              child: Row(
                children: [
                  Icon(
                    Icons.commute_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "How to Reach",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 9,
              child: Row(
                children: [
                  Icon(
                    Icons.hotel_class_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Restaurants",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Shopping",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            PopupMenuItem<int>(
              value: 11,
              child: Row(
                children: [
                  Icon(
                    Icons.local_hospital_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Hospital",
                    // style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
          onSelected: (item) => SelectedItem(context, item),
        ),
        //  ChangeThemeButtonWidget(),
      ],
    ),
      // PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),
      //   child: const MyAppBar(),
      // ),
      body: Column(
        children: [
         // HeaderWithCulinary(size: size),
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: culinary.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(25.0),
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
                                    image: AssetImage(culinary[index].image))),
                            alignment: Alignment
                                .bottomCenter, // This aligns the child of the container
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom:
                                        15), //some spacing to the child from bottom
                                child: Text(culinary[index].title.toUpperCase(),
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
                              builder: (context) => CulinaryBodyPage(
                                culinary: culinary[index],
                              ),
                            )),
                      ));

                  // GridView.builder(
                  //    padding: const EdgeInsets.all(10),
                  //   itemCount: culinary.length,
                  //   gridDelegate:
                  //   const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 1,
                  //   // mainAxisSpacing: kDefaultPadding,
                  //   crossAxisSpacing: 0.0,
                  // mainAxisSpacing: 0.0,
                  //  // childAspectRatio: 0.95,
                  //   ),

                  // itemBuilder: (context,index) => CulinaryCard(
                  //   culinary: culinary[index],
                  //    press: () => Navigator.push(
                  //      context, MaterialPageRoute(
                  //        builder: (context) => CulinaryBodyPage(
                  //          culinary:culinary[index],
                  //          ),
                  //          ),
                  //    ),
                  // )
                  // ),
                }),
          ))
        ],
      ),
    );
  }
}
