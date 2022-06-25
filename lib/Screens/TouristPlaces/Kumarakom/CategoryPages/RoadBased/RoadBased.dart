import 'package:flutter/material.dart';

class RoadBased {
  final String description;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  RoadBased(
      {required this.description,

      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<RoadBased> roadbased = [
  RoadBased(
      description:
          "Kavanattinkara- Vechoor-Achan Road via Kallara - Ezhumanthuruth (1.hr) Kumarakom Market Junction Nazarathpally - Konchumada - Nalupank Daivathinte Munamb (Evening Tour-3 hrs)",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
