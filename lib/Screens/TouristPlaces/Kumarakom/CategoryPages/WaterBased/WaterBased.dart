import 'package:flutter/material.dart';

class WaterBased {
  final String description;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  WaterBased(
      {required this.description,

      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<WaterBased> waterbased = [
  WaterBased(
      description:
          "Kavanattinkara - Moolepadom via Choolabhagam- Kumarakom Market junction-Boat Jetty Vembanad Lake (Country Boat Ride- 4 hrs, Motor Boat 2hrs)",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  WaterBased(
      description:
          "Kumarakom Market Junction - Edavattom-Muthallymada via Daivathinte Munamb-R Block. (Motor Boat Ride -3 hrs, Craft Boat - 4 hrs) ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  WaterBased(
      description:
          "Kumarakom Market Junction -Attamangalam Church Kandankav- Kannadichal - Naragathara -Muthallymada - Daivathinte Munamb Vembanad lake (Country Boat Ride-3 hrs)",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  WaterBased(
      description:
          "Kumarakom Boat Jetty- Kurushupalli -Kumarakom Lake Resort - Asarimattom Colony Cocobay Regional Agricultural Research Station - Taj Garden - Water Scapes Birds Sanctuary - Kavanattinkara (Motor Boat-3 hrs) ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  WaterBased(
      description:
          "Kavanattinkara Vattakayal- Cheepumkal- Pallikkara -Coconut Lagoon - Kavanattinkara (Circular trip-2 hrs) ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  WaterBased(
      description:
          "Kavanattinkara Vattakayal-Cheepumkal, Maniyaparambu Mannanam (1 hr) ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  WaterBased(
      description: "Kavanattinkara Vattakayal-Parippu (1 hr) ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  WaterBased(
      description: "Kavanattinkara Kaippuzhamuttu - Manchadikkari (2 hrs) ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  WaterBased(
      description:
          "Kavanattinkara - Cheepumkal Maniyamparambu- Perumthuruth - Mundar via Ezhumanthuruth (Motor Boat-2 hrs) ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219))
];
