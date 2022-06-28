import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/Commercial.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import '../../../Utils/constants.dart';

//import '../../culinary_bodyPage.dart';

class commercialDetailsPage extends StatelessWidget {
  final Commercial commercial;
  const commercialDetailsPage({Key? key, required this.commercial})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const MyAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
             
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Container(
                  child: Text(commercial.title,
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
                    image: AssetImage(commercial.image),
                    fit: BoxFit.fill,

                    
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                          
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(commercial.address,
                                  style: TextStyle(color: Colors.blue)),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.local_phone_rounded,
                              color: Colors.grey,
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(commercial.phone.toString(),
                                  style: TextStyle(color: Colors.blue)),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.mail_outline_rounded,
                              color: Colors.green,
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(commercial.email.toString(),
                                  style: TextStyle(color: Colors.blue)),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.web,
                              color: Colors.red,
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(commercial.website.toString(),
                                  style: TextStyle(color: Colors.blue)),
                            ),
                          ),
                         
                        ],
                      ),
                    ),

                    
                  ],
                ),
              )

            ],
          ),
        ));
  }
}
