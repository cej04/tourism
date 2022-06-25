import 'package:flutter/material.dart';

class AccessingKottayam {
  final String description, title;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  AccessingKottayam(
      {required this.description,
      required this.title,

      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<AccessingKottayam> accessingKottayam = [
  AccessingKottayam(
      title: "Kavanattinkara Boat Terminal - 4 km ",
      description: "- 4 km",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  AccessingKottayam(
      title: "  Kottayam Railway Station - 13 km",
      description: "- 13 km ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  AccessingKottayam(
      title: "Kottayam KSRTC Bus Station - 13 km",
      description: "- 13 km",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  AccessingKottayam(
      title: " Kodimatha - 14km",
      description: "- 14km",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  AccessingKottayam(
      title: " Vaikom - 20 km",
      description: "- 20 km",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  AccessingKottayam(
      title: "Alappuzha - 39 km",
      description: "- 39 km ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  AccessingKottayam(
      title: "Kochi - 69 km",
      description: "- 69 km",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  AccessingKottayam(
      title: " Nedumbassery Airport, Kochi - 89 km",
      description: "- 89 km ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  AccessingKottayam(
      title: " Thiruvananthapuram  172 km",
      description: "- 172 km",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  AccessingKottayam(
      title: "Thanneermukkam - 11 km",
      description: " - 11 km",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
