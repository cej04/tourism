import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:readmore/readmore.dart';

class WelcomeKtmDetailsPage extends StatelessWidget {
  final Welcome welcome;
  const WelcomeKtmDetailsPage({Key? key, required this.welcome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(   
      title: Text("About Kottayam"),     
    automaticallyImplyLeading: false,
    leading: Navigator.canPop(context)
        ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        : null,
),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Container(
              child: Text(welcome.title,
              ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              
              image: DecorationImage(
                image: AssetImage(welcome.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: ReadMoreText(welcome.description,
                            textAlign: TextAlign.justify,
                                                         style: TextStyle(height: 1.7),

                            trimLines: 20,
                            colorClickableText: Colors.blue,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                            lessStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
