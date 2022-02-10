import 'package:flutter/material.dart';
import 'package:ktmtourism/DrawerScreen.dart';
import 'package:ktmtourism/menuPage.dart';

import 'homePage.dart';
import 'mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kottayam Tourism',
       initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/mainPage': (context) => const MainPage(),
  },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            
            
            onPressed: () {
              setState(() {
              menuPage();  
              });
            //  PopupMenuButton(
            //     itemBuilder: (context) => [
            //       PopupMenuItem(
            //         child: Text("First"),
            //         value: 1,
            //       ),
            //       PopupMenuItem(
            //         child: Text("Second"),
            //         value: 2,
            //       )
            //     ]
            // );
            },
          ),
            ),
            Text("Kottayam Tourism"),
          ],
        ),
        actions: [],
      ),
      body: MainPage(),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
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
                Navigator.pushNamed(context,'/');
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text('Emergency Contacts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: Text('Tourism Information'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.question_answer),
              title: Text('FAQs'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
