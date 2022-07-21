import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Produce/produce.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

class ProduceBodyPage extends StatelessWidget {
  final Produce produce;
  const ProduceBodyPage({Key? key, required this.produce}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     appBar:AppBar(   
      title: Text("Produce"),     
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
              child: Text(produce.title,
                ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              
           
              image: DecorationImage(
                image: AssetImage(produce.image),
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
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.apps_sharp),
                    Text(
                      "Type :",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      produce.type,
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
                      child: Text(
                        produce.description,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                       style: TextStyle(height: 1.7),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
