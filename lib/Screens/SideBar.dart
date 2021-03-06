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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(
          title: 'Kottayam Tourism',
        ),
      ),
      body: MainSample2Page(),
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
            // ListTile(
            //   leading: const Icon(Icons.home),
            //   title: Text('Home'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/HomePage');
            //   },
            // ),
            // Divider(
            //   thickness: 2.0,
            // ),
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
              leading: const Icon(Icons.local_police_outlined),
              title: Text('Police'),
              onTap: () {
                Navigator.pushNamed(context, '/PoliceDetail');
              },
            ),
            const Divider(
              thickness: 2.0,
            ),
             ListTile(
              leading: const Icon(Icons.fire_extinguisher),
              title: Text('Fire & Rescue'),
              onTap: () {
                Navigator.pushNamed(context, '/FRdetail');
              },
            ),
            const Divider(
              thickness: 2.0,
            ),
             ListTile(
              leading: const Icon(Icons.local_hospital),
              title: Text('Government Hospitals'),
              onTap: () {
                Navigator.pushNamed(context, '/GovDetail');
              },
            ),
             const Divider(
              thickness: 2.0,
            ),
             ListTile(
              leading: const Icon(Icons.local_hospital),
              title: Text('Private Hospitals'),
              onTap: () {
                Navigator.pushNamed(context, '/PrivateDetail');
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
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('speech'),
              onTap: () {
                Navigator.pushNamed(context, '/Speech');
              },
            
            ),
               ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('WebViewApp'),
              onTap: () {
                Navigator.pushNamed(context, '/WebViewApp');
              },
            
            ),
            
          ],
        ),
      ),
    );
  }
}
