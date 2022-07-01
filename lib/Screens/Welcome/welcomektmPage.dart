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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(title: 'Welcome to Kottayam'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: welcome.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20.0),
                        child: GestureDetector(
                          child: Card(
                            color: Colors.grey[200],
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset(welcome[index].image),
                                ListTile(
                                  title: Text(welcome[index].title),
                                  subtitle: Text(
                                    welcome[index].subtitle1,
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
