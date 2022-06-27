import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/MainHome/sampleMain2.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF757575),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(),
      ),
      body:
          //MainHomeSample(),

          //SampleMain(),
          MainSample2Page(),
      // MainPage(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/APPlogo2.png"),
                      fit: BoxFit.contain)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text('Emergency Contacts'),
              onTap: () {
                Navigator.pushNamed(context, '/EmergencyPage');
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: Text('Tourism Information'),
              onTap: () {
                Navigator.pushNamed(context, '/TourismInfoPage');
              },
            ),
            const Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQs'),
              onTap: () {
                Navigator.pushNamed(context, '/FAQPage');
              },
            ),

            // ListTile(
            //   leading: Icon(Icons.question_answer),
            //   title: Text('GoogleMap'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/GoogleMap');
            //   },
            // ),
            //    ListTile(
            //   leading: Icon(Icons.question_answer),
            //   title: Text('kumarakom'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/kumarakom');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}