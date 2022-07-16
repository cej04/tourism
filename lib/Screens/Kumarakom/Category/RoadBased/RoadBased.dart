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
          "Kavanattinkara- Vechoor-Achan Road via Kallara - Ezhumanthuruth\n \n(1.hr) .",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
        RoadBased(
      description:
          "Kumarakom Market Junction Nazarathpally - Konchumada - Nalupank Daivathinte Munamb \n\n(Evening Tour-3 hrs)",
      //iconData :Icons.hotel_class_outlined,
       bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
];
