import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/ViewMore/KottayamViewMoreCard.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/ViewMore/viewMore.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Screens/restaurantcategory.dart';

class KottayamViewMoreDetail extends StatefulWidget {
  const KottayamViewMoreDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<KottayamViewMoreDetail> createState() => _KottayamViewMoreDetailState();
}

class _KottayamViewMoreDetailState extends State<KottayamViewMoreDetail> {
  var selected = 0;
  late Category category;
  late Function callback;
  var tabindex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(),
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
              //  => Navigator.push(
              //    context, MaterialPageRoute(
              //      builder: (context) => PilgrimsBodyPage(
              //        pilgrims:pilgrims[index],
              //        ),
              //        ),
              //  ),
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
              //  => Navigator.push(
              //    context, MaterialPageRoute(
              //      builder: (context) => PilgrimsBodyPage(
              //        pilgrims:pilgrims[index],
              //        ),
              //        ),
              //  ),
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
              //  => Navigator.push(
              //    context, MaterialPageRoute(
              //      builder: (context) => PilgrimsBodyPage(
              //        pilgrims:pilgrims[index],
              //        ),
              //        ),
              //  ),
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
              //  => Navigator.push(
              //    context, MaterialPageRoute(
              //      builder: (context) => PilgrimsBodyPage(
              //        pilgrims:pilgrims[index],
              //        ),
              //        ),
              //  ),
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
              //  => Navigator.push(
              //    context, MaterialPageRoute(
              //      builder: (context) => PilgrimsBodyPage(
              //        pilgrims:pilgrims[index],
              //        ),
              //        ),
              //  ),
              )),
    );
  }
}
