import 'package:flutter/material.dart';

class Air {
  final String title, subtitle, weblink, phone;
  final int pincode;
  final Color bgcolor;
  Color iconColor;
  Air(
      {required this.title,
      required this.subtitle,
      required this.weblink,
      required this.phone,
      required this.pincode,
      required this.bgcolor,
      required this.iconColor});
}

List<Air> air = [
  Air(
    title:
        " Cochin International Airport – Nearest Airport (Ernakulam District)",
    subtitle: "Cochin International Airport, Ernakulam District",
    weblink: "http://www.cial.aero/",
    pincode: 682031,
    phone: "+910484 2610115",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  Air(
    title: " Trivandrum International Airport ( Thiruvananthapuram District)",
    subtitle: "Trivandrum International Airport, Thiruvananthapuram District",
    weblink: " https://www.aai.aero/en/node/2654",
    pincode: 695004,
    phone: "+910471 2702600",
    bgcolor: Color(0xFFFCF0F0),
    iconColor: Color.fromARGB(255, 236, 151, 158),
  )
];
