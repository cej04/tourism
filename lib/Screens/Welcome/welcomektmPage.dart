import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektmDetailPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class welcomektmPage extends StatefulWidget {
  const welcomektmPage({Key? key}) : super(key: key);

  @override
  _welcomektmPageState createState() => _welcomektmPageState();
}

class _welcomektmPageState extends State<welcomektmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Welcome to kottayam",
        ),
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
                    Text("Art & Culture"),
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
                    ),
                  ],
                ),
              ),
            ],
            onSelected: (item) => SelectedItem(context, item),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: welcome.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(25.0),
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
                            Image.asset(welcome[index].image),
                            ListTile(
                              //   leading: Icon(Icons.arrow_circle_right),
                              title: Text(welcome[index].title),
                              subtitle: Text(
                                welcome[index].subtitle1,
                              //  "Thi sis a sample subtitle regarding th etitle",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              trailing: Icon(Icons.navigate_next),
                            ),
                          ],
                        ),
                      ),
                          
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeKtmDetailsPage(
                                  welcome: welcome[index],
                                ),
                              )),
                        ));
                  }))
        ],
      ),
    );
  }
}
