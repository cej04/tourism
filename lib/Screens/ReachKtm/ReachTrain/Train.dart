import 'package:flutter/material.dart';

class Train {
  final String title, phone;
  final int pincode;
  final Color bgcolor;
  Color iconColor;
  Train(
      {required this.title,
      required this.phone,
      required this.pincode,
      required this.bgcolor,
      required this.iconColor});
}

List<Train> train = [
  Train(
    title: " Railway Station Kottayam",
    pincode: 686002,
    phone: "+91481 2563535",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
];
