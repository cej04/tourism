import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Festivals/festivals.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:readmore/readmore.dart';

class FestivalsBodyPage extends StatelessWidget {
  final Festivals festivals;
  const FestivalsBodyPage({Key? key, required this.festivals})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Container(
              child: Text(festivals.title,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6.0,
                ),
              ],
        
              image: DecorationImage(
                image: AssetImage(festivals.image),
                fit: BoxFit.fill,

               
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              color: Colors.grey,
          
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.calendar_view_month_sharp),
                    Text(
                      "Celebrated on/during: ",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      festivals.type,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              )),
          Expanded(
            child: ListView(
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: ReadMoreText(festivals.description,
                            textAlign: TextAlign.justify,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.apply(
                                  color: Colors.black,
                                )
                                .copyWith(height: 1.8),
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
                                color: Colors.blue))
                       
                        ),
                  ),
                ),
                Container()

              ],
            ),
          ),
      
        ],
      ),
    );
  }
}
