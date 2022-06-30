import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/CommercialDetailPage.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/ViewMore/kottayamViewMore.dart';

class CommercialPage extends StatefulWidget {
  const CommercialPage({Key? key}) : super(key: key);

  @override
  _CommercialPageState createState() => _CommercialPageState();
}

class _CommercialPageState extends State<CommercialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: commercial.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    child: GestureDetector(
                      child: Card(
                        color: Colors.grey[200],
                    //    clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Image.asset(commercial[index].image),
                            ListTile(
                              leading: Text(commercial[index].tariff),
                              title: Text(commercial[index].title),
                              trailing: Icon(Icons.navigate_next),
                            ),
                          ],
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => commercialDetailsPage(
                            commercial: commercial[index],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => KottayamViewMoreDetail()));
        },
        label: const Text('View More'),
        icon: const Icon(Icons.navigate_next),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
