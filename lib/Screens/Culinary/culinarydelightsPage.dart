import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Culinary/culinary.dart';
import 'package:ktmtourism/Screens/Culinary/culinary_bodyPage.dart';
import 'package:ktmtourism/Screens/Headers/header_culinary.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

import 'culinary_card.dart';


class CulinaryDelightPage extends StatelessWidget {
  
  const CulinaryDelightPage({ Key? key,  }) : super(key: key);

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
            HeaderWithCulinary(size: size),
          Expanded(
            child: GridView.builder(
               padding: const EdgeInsets.all(20),
              itemCount: culinary.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              // mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              // childAspectRatio: 0.75,
              ),
            
            itemBuilder: (context,index) => CulinaryCard(
              culinary: culinary[index],
               press: () => Navigator.push(
                 context, MaterialPageRoute(
                   builder: (context) => CulinaryBodyPage(
                     culinary:culinary[index],
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

