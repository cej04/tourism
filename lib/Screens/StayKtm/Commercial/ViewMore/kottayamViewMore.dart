import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/ViewMore/KottayamViewMoreCard.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/ViewMore/viewMore.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


class KottayamViewMoreDetail extends StatefulWidget {
  const KottayamViewMoreDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<KottayamViewMoreDetail> createState() => _KottayamViewMoreDetailState();
}

class _KottayamViewMoreDetailState extends State<KottayamViewMoreDetail> {
  var selected = 0;
 
  late Function callback;
  var tabindex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:
        AppBar(
      elevation: 0,
      title:  Text(
        "Commercial Stay",
      ),
     
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/images/APPlogo2.png",
                fit: BoxFit.contain,
              
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
                    "Tourist Places",                  ),
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
                  Text(
                    "Art & Culture",
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
       
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(color: Colors.teal, child: _tabSection(context)),
            ],
          ),
        ));
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 5,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: "Kottayam"),
            Tab(text: "Changanacherry"),
            Tab(
              text: "Ettumanoor",
            ),
            Tab(
              text: "Vaikom",
            ),
            Tab(
              text: "Mundakkayam",
            ),
          ],
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            const ListViewKottayam(),
            const ListViewChanganacherry(),
            const ListViewEttumanoor(),
            const ListViewVaikom(),
            const ListViewMundakkayam(),
          ]),
        ),
      ],
    ),
  );
}

class KottayamViewAll extends StatelessWidget {
  int selected;
  final PageController pageController;
  final Function callback;
  KottayamViewAll(
    this.selected,
    this.callback,
    this.pageController, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (index) => callback(index),
      children: [
        ListViewKottayam(),
        ListViewChanganacherry(),
        ListViewEttumanoor(),
        ListViewVaikom(),
        ListViewMundakkayam()
      ],
    );
  }
}

class ListViewKottayam extends StatelessWidget {
  const ListViewKottayam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: commercialviewmore.length,
          itemBuilder: (context, index) => kottayamViewMoreCard(
              commercialviewmore: commercialviewmore[index], press: () {}
              
              )),
    );
  }
}

class ListViewChanganacherry extends StatelessWidget {
  const ListViewChanganacherry({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: viewmorechanganacherry.length,
          itemBuilder: (context, index) => ChanganacherryViewMoreCard(
              viewmorechanganacherry: viewmorechanganacherry[index],
              press: () {}
             
              )),
    );
  }
}

class ListViewEttumanoor extends StatelessWidget {
  const ListViewEttumanoor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: viewmorettumanoor.length,
          itemBuilder: (context, index) => EttumanoorViewMoreCard(
              viewmorettumanoor: viewmorettumanoor[index], press: () {}
             
              )),
    );
  }
}

class ListViewVaikom extends StatelessWidget {
  const ListViewVaikom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: viewmoreVaikom.length,
          itemBuilder: (context, index) => VaikomViewMoreCard(
              viewmoreVaikom: viewmoreVaikom[index], press: () {}
              
              )),
    );
  }
}

class ListViewMundakkayam extends StatelessWidget {
  const ListViewMundakkayam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: viewmoremundakkayam.length,
          itemBuilder: (context, index) => MundakkayamViewMoreCard(
              viewmoremundakkayam: viewmoremundakkayam[index], press: () {}
            
              )),
    );
  }
}
