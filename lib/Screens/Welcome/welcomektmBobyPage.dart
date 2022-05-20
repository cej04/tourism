import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:readmore/readmore.dart';

class WelcomeKtmBodyPage extends StatelessWidget {
  final Welcome welcome;
  const WelcomeKtmBodyPage({Key? key, required this.welcome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Container(
            child: Text(welcome.title,
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
           // borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(welcome.image),
              fit: BoxFit.fill,

              //alignment: Alignment.topCenter,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              SizedBox(height: 10,),
              // Container(
                
                
              //     color: Colors.grey,
              //     //crossAxisAlignment:CrossAxisAlignment.end,
              //     //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Icon(Icons.calendar_view_month_sharp  ),
              //         Text(
              //           "Celebrated on/during: ",
              //           style: Theme.of(context).textTheme.headline6,
              //         ),
              //         Text(
              //           welcome.type,
              //           style: Theme.of(context).textTheme.headline6,
              //         ),
              //       ],
              //     )),
              // SizedBox(height: 20,),
              // Padding(
              //   padding: const EdgeInsets.all(kDefaultPadding),
              //   child: Row(
              //     //crossAxisAlignment:CrossAxisAlignment.end,
              //     //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Text(
              //         "Description",
              //         style: Theme.of(context).textTheme.headline6,
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: 
                    ReadMoreText(
                      welcome.description,
                       textAlign: TextAlign.justify,
                         style: Theme.of(context).textTheme.bodyText2?.apply(color: Colors.black,).copyWith(height: 1.8),
          trimLines: 20,
          colorClickableText: Colors.blue,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),
          lessStyle:TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue)
        )
                    // Text(
                    //   festivals.description,
                    //   overflow: TextOverflow.visible,
                    //   textAlign: TextAlign.justify,
                    // ),
                  ),
                ),
              ),
              Container()
        
              //Text(product.description,overflow: TextOverflow.visible,),
            ],
          ),
        ),
        // Container(
        //   child: Text(product.description),
        // ),
      ],
    );
  }
}
