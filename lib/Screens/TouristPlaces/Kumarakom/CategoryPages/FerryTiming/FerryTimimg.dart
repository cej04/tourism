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
          "Kottayam Kodimatha (21) to Alappuzha (2/2 hrs) 0645 hrs, 1130 hrs, 1300 hrs, 1530 hrs, 1730 hrs Kumarakom Boat Jetty to Muhamma -frequent ferry services from 0630 hrs to 2000 hrs Cheepumkal via Maniyamparambu to Mannanam - D620 hrs, 0800 hrs, 1200 hrs, 1415 hrs, 1645 hrs, 1815 hrs",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
