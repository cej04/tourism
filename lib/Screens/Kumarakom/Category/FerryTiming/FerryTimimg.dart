import 'package:flutter/material.dart';

class FerryTiming {
  final String description;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  FerryTiming(
      {required this.description,

      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<FerryTiming> ferrytiming = [
  FerryTiming(
      description:
          "Kottayam - Kodimatha to Alappuzha (2.5 hrs)\n\n06:45 hrs, 11:30 hrs, 13:00 hrs, 1530 hrs, 17:30 hrs .",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
       FerryTiming(
      description:
          "Kumarakom Boat Jetty to Muhamma -frequent ferry services from 06:30 hrs to 20:00 hrs Cheepumkal via Maniyamparambu to Mannanam \n\n 06:20 hrs, 08:00 hrs, 12:00 hrs, 14:15 hrs, 16:45 hrs, 18:15 hrs",
      //iconData :Icons.hotel_class_outlined,
        bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
];
