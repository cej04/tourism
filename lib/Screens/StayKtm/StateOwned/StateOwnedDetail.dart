import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import '../../../Utils/constants.dart';



class StateOwnedDetailsPage extends StatelessWidget {
  final StateOwned stateowned;
  const StateOwnedDetailsPage({Key? key, required this.stateowned})
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
                  child: Text(stateowned.title,
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
                    image: AssetImage(stateowned.image),
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
                            leading: Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(stateowned.address,
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
                              child: Text(stateowned.phone.toString(),
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
                              child: Text(stateowned.email.toString(),
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
