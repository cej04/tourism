import 'package:flutter/material.dart';

class Road {
  final String title, phone;
  final int pincode;
  final Color bgcolor;
  Color iconColor;

  Road(
      {required this.title,
      required this.phone,
      required this.pincode,
      required this.bgcolor,
      required this.iconColor});
}

List<Road> road = [
  Road(
    title: " KSRTC Changanassery",
    pincode: 686101,
    phone: "+910481 2421824",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  Road(
      title: " KSRTC Erattupetta",
      pincode: 686121,
      phone: "+914822 272230",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Road(
      title: " KSRTC Kottayam",
      pincode: 686001,
      phone: "+910481 2562908",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Road(
    title: " KSRTC PALA",
    pincode: 686575,
    phone: "+914822 2212711",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  Road(
      title: " KSRTC Ponkunnam",
      pincode: 686506,
      phone: "+914828 8221333",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Road(
      title: " KSRTC VAIKOM",
      pincode: 686141,
      phone: "+914829 9221210",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
];
