import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/map_utils.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: TextButton(
                onPressed: () {
                  MapUtils.openMap(9.590219808715087, 76.53351856579714);
                },
                child: Text("Show on Map")),
          ),
        ),
      ),
    );
  }
}
