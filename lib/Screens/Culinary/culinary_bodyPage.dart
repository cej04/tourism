import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Culinary/culinary.dart';
import 'package:ktmtourism/Utils/constants.dart';


class CulinaryBodyPage extends StatelessWidget {
  final Culinary culinary;
  const CulinaryBodyPage({Key? key, required this.culinary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
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
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(culinary.image),
                fit: BoxFit.fill,

                //alignment: Alignment.topCenter,
              ),
            ),
          ),
          Column(
            children: [
               SizedBox(height: 10,),
              // Padding(
              //   padding: const EdgeInsets.all(kDefaultPadding),
              //  child:
                 Container(
                  
                    color: Colors.grey,
                    //crossAxisAlignment:CrossAxisAlignment.end,
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    )),
            //  ),
              // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Row(
                  //crossAxisAlignment:CrossAxisAlignment.end,
                  //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Description",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Text(
                      culinary.description,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              )

              //Text(product.description,overflow: TextOverflow.visible,),
            ],
          ),
          // Container(
          //   child: Text(product.description),
          // ),
        ],
      ),
    );
  }
}
