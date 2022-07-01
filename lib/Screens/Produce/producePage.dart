import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Produce/produce.dart';
import 'package:ktmtourism/Screens/Produce/produce_bodyPage.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class ProducePage extends StatelessWidget {
  const ProducePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
   appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(title: 'Produce',),
        ),
      
      body: Column(
        children: [
      
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: produce.length,
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
                                    image: AssetImage(produce[index].image))),
                            alignment: Alignment
                                .bottomCenter, // This aligns the child of the container
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15.0,
                                    bottom:
                                        15), //some spacing to the child from bottom
                                child: Text(produce[index].title.toUpperCase(),
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
                              builder: (context) => ProduceBodyPage(
                                produce: produce[index],
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
