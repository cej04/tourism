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
      
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: produce.length,
                itemBuilder: (context, index) {
return Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10.0),
                      child: GestureDetector(
                        child: Card(
                  //        color: Colors.grey[200],
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(produce[index].image),
                              ListTile(
                                title: Text(produce[index].title),
                                subtitle: Text(
                                  produce[index].subtitle,
                                ),
                                trailing: Icon(Icons.navigate_next),
                              ),
                            ],
                          ),
                        ),
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
