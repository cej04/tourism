import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_produce.dart';
import 'package:ktmtourism/Screens/Produce/produce.dart';
import 'package:ktmtourism/Screens/Produce/produce_bodyPage.dart';
import 'package:ktmtourism/Screens/Produce/produce_card.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';


// import 'culinary_card.dart';
// import 'culinary_detail.dart';


class ProducePage extends StatelessWidget {
  
  const ProducePage({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
    Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: const MyAppBar(),
      ),
      body: Column(
        children: [
            HeaderWithProduce(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: produce.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => ProduceCard(
              produce: produce[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => ProduceBodyPage(
                     produce:produce[index],
                     ),
                     ),
               ),
            )
            ),
            )
        ],
      ),
    );
  }
}

