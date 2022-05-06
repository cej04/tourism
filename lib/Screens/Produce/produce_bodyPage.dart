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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                child: Text(produce.title,
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
                  image: AssetImage(produce.image),
                  fit: BoxFit.fill,

                  //alignment: Alignment.topCenter,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(kDefaultPadding),
                //   child:
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
                          produce.type,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    )),
                // ),
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
                        produce.description,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
