import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culture.dart';
import 'package:ktmtourism/Screens/ArtCulture/art_culturebodyPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

import 'package:ktmtourism/Screens/Headers/header_artculture.dart';

class ArtCulturePage extends StatelessWidget {
  const ArtCulturePage({
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
        "Art & Culture",
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
      //  PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),
      //   child: const MyAppBar(),
      // ),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        //  HeaderWithArtCulture(size: size),
          //  Expanded(
          //   child:

          //    // SizedBox(height: 10,),
          //     // Container(

          //     //     color: Colors.grey,
          //     //     //crossAxisAlignment:CrossAxisAlignment.end,
          //     //     //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     //     child: Row(
          //     //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     //       children: [
          //     //         Icon(Icons.calendar_view_month_sharp  ),
          //     //         Text(
          //     //           "Celebrated on/during: ",
          //     //           style: Theme.of(context).textTheme.headline6,
          //     //         ),
          //     //         Text(
          //     //           artculture.type,
          //     //           style: Theme.of(context).textTheme.headline6,
          //     //         ),
          //     //       ],
          //     //     )
          //     //     ),
          //     // SizedBox(height: 20,),
          //     Column(
          //       //crossAxisAlignment:CrossAxisAlignment.end,
          //       //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         // Text(
          //         //   "Art and Culture",
          //         //   style: Theme.of(context).textTheme.headline6,
          //         // ),
          //          //Expanded(
          //           //  child: Padding(
          //           //    padding: const EdgeInsets.all(8.0),
          //           //    child: Text('''
          //           //                      "Kottayam occupies a prominent place in the cultural map of Kerala.Kunchan Nambiar, the father of Thullal, a popular temple art form, is supposed to have lived at Kidangoor. Unnineeli Sandesam, the exquisite Malayalam poetry work, is supposed to have been written by one of the Vadakkumkur Rajas. The Christian Missionaries enriched Malayalam literature by their valuable contributions in the 18th and 19th Centuries. Varthamana Pusthakam (1778) written by Paremmakkal Thoma Kathanar, on a travel to Rome, is the first travelogue in Malayalam. The first autobiography in Malayalam by Vaikom Pachu Moothathu was published from Kottayam in 1870.In the concluding decades of the 19th Century and the beginning of the 20th Century, Kottayam shot into limelight as the nerve centre of all literary and cultural activities in the erstwhile Travancore State. Late Kottarathil Sankunny, Kandathil Varghese Mappilai, Kerala Varma Valiyakoi Thampuran, K.C. Mammen Mappilai, Kattakkayathil Cheriyan Mappilai, Vadakkumkoor Raja Raja Varma, Karoor Neelakanda Pillai, Vaikom Muhammed Basheer, D.C. Kizhakkemuri and Abhaya Dev are few names, in the category of outstanding dignitaries and celebrities, worth mentioning, who had made very valuable, substantial and individual contributions in their own way to the cultural and social milieu. Eminent writers Ponkunnam Varkey, Vaikom Chandra Sekharan Nair, distinguished Poet Mahakavi Pala Narayanan Nair, illustrious Kathakali artist Kudamaloor Karunakaran Nair, world renowned Booker prize winner Arundhathi Roy, accomplished film actor Mammootty, and talented film director Jayaraj are some other notable personalities who all hail from Kottayam district. Renowned music director L. P. R. Varma (Late ) also hailed from Kottayam.Kottayam stands first in the field of Education, Mass Communication, Printing and Book Publication. The significant role played by Malayala Manorama & Bhashaposhini and Deepika for the cultural and literary development is of immense importance. There are many printing presses and book publishing companies in Kottayam. The SPCS, a unique co-operation venture of authors and writers was started in the year 1945. Prominent publishers D.C. Books started publication from here in the year 1974. Kottayam is the headquarters of Current Books since the year 1977. It is estimated that 70% of the State’s book publication takes place in Kottayam."''',maxLines: 70, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.justify,),
          //           //  ),
          //       // child: Container(
          //       //   child: Padding(
          //       //     padding: const EdgeInsets.all(kDefaultPadding),
          //       //     child:
          //       //     SingleChildScrollView(
          //       //       child: Text(
          //       //                            "Kottayam occupies a prominent place in the cultural map of Kerala.Kunchan Nambiar, the father of Thullal, a popular temple art form, is supposed to have lived at Kidangoor. Unnineeli Sandesam, the exquisite Malayalam poetry work, is supposed to have been written by one of the Vadakkumkur Rajas. The Christian Missionaries enriched Malayalam literature by their valuable contributions in the 18th and 19th Centuries. Varthamana Pusthakam (1778) written by Paremmakkal Thoma Kathanar, on a travel to Rome, is the first travelogue in Malayalam. The first autobiography in Malayalam by Vaikom Pachu Moothathu was published from Kottayam in 1870.In the concluding decades of the 19th Century and the beginning of the 20th Century, Kottayam shot into limelight as the nerve centre of all literary and cultural activities in the erstwhile Travancore State. Late Kottarathil Sankunny, Kandathil Varghese Mappilai, Kerala Varma Valiyakoi Thampuran, K.C. Mammen Mappilai, Kattakkayathil Cheriyan Mappilai, Vadakkumkoor Raja Raja Varma, Karoor Neelakanda Pillai, Vaikom Muhammed Basheer, D.C. Kizhakkemuri and Abhaya Dev are few names, in the category of outstanding dignitaries and celebrities, worth mentioning, who had made very valuable, substantial and individual contributions in their own way to the cultural and social milieu. Eminent writers Ponkunnam Varkey, Vaikom Chandra Sekharan Nair, distinguished Poet Mahakavi Pala Narayanan Nair, illustrious Kathakali artist Kudamaloor Karunakaran Nair, world renowned Booker prize winner Arundhathi Roy, accomplished film actor Mammootty, and talented film director Jayaraj are some other notable personalities who all hail from Kottayam district. Renowned music director L. P. R. Varma (Late ) also hailed from Kottayam.Kottayam stands first in the field of Education, Mass Communication, Printing and Book Publication. The significant role played by Malayala Manorama & Bhashaposhini and Deepika for the cultural and literary development is of immense importance. There are many printing presses and book publishing companies in Kottayam. The SPCS, a unique co-operation venture of authors and writers was started in the year 1945. Prominent publishers D.C. Books started publication from here in the year 1974. Kottayam is the headquarters of Current Books since the year 1977. It is estimated that 70% of the State’s book publication takes place in Kottayam.",
          //       //         overflow: TextOverflow.visible,
          //       //         textAlign: TextAlign.justify,
          //       //       ),
          //       //     ),
          //       //   ),
          //       // ),
          // //)
          //       ],
          //     ),

          //     //Text(product.description,overflow: TextOverflow.visible,),

          // ),
          // Expanded(
          //   child: GridView.builder(
          //      padding: const EdgeInsets.all(10),
          //     itemCount: artculture.length,
          //     gridDelegate:
          //     SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //     // mainAxisSpacing: kDefaultPadding,
          //     crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //     // childAspectRatio: 0.75,
          //     ),

          //   itemBuilder: (context,index) => ArtCultureCard(
          //     artculture: artculture[index],
          //      press: () => Navigator.push(
          //        context, MaterialPageRoute(
          //          builder: (context) => ArtCultureBodyPage(
          //            artculture:artculture[index],
          //            ),
          //            ),
          //      ),

          //   )
          //   ),

          //   ),

          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: artculture.length,
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
                                    image:
                                        AssetImage(artculture[index].image))),
                            alignment: Alignment
                                .bottomCenter, // This aligns the child of the container
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom:
                                        15), //some spacing to the child from bottom
                                child:
                                    Text(artculture[index].title.toUpperCase(),
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
                              builder: (context) => ArtCultureBodyPage(
                                artculture: artculture[index],
                              ),
                            )),
                      ));
                }),
          ))
        ],
      ),
    );
  }
}
