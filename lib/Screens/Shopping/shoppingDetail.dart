import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Shopping/shopping.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ShoppingDetail extends StatelessWidget {
  const ShoppingDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       appBar:AppBar(   
      title: Text("Shopping"),     
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
            child: ListView.builder(
                itemCount: shopping.length,
                itemBuilder: (BuildContext context, int index) {
                  final que = shopping[index];

                  return Card(
                    child: ListTile(
                      tileColor: que.bgcolor,
                      leading: Icon(
                        Icons.shopping_bag_outlined,
                        color: que.iconColor,
                      ),
                      title: Text(que.name),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10.0),
                          Text(que.description),
                          
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Phone :"),
                              TextButton(
                                  onPressed: () async {
                                    final url = 'tel:${que.phone}';

                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    }
                                  },
                                  child: Text(que.phone.toString())),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
