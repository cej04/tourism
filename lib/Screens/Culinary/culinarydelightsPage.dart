import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Culinary/culinary.dart';
import 'package:ktmtourism/Screens/Culinary/culinary_bodyPage.dart';

import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class CulinaryDelightPage extends StatelessWidget {
  const CulinaryDelightPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
   appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(title: 'Culinary Delights',),
        ),
      
      body: Column(
        children: [
         // HeaderWithCulinary(size: size),
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: culinary.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: GestureDetector(
                        child: Container(
                            height: 200,
                           
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(culinary[index].image))),
                            alignment: Alignment
                                .bottomCenter, 
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom:
                                        15), 
                                child: Text(culinary[index].title.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.apply(
                                          color: Colors.white,
                                          backgroundColor:
                                              Colors.black.withOpacity(0.5),
                                        )
                                        .copyWith(letterSpacing: 1)))),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CulinaryBodyPage(
                                culinary: culinary[index],
                              ),
                            )),
                      ));

                  
                }),
          ))
        ],
      ),
    );
  }
}
