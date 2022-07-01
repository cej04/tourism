import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Culinary/culinary.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

class CulinaryBodyPage extends StatelessWidget {
  final Culinary culinary;
  const CulinaryBodyPage({Key? key, required this.culinary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: 
      PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Container(
              child: Text(culinary.title,
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
                image: AssetImage(culinary.image),
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
                      culinary.type,
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
                        culinary.description,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.apply(
                              color: Colors.black,
                            )
                            .copyWith(height: 1.8),
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
