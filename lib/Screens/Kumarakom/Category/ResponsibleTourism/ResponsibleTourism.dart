import 'package:flutter/material.dart';

class ResponsibleTourism {
  final String name, description,tariff;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  ResponsibleTourism(
      {required this.description,
      required this.name,
      required this.tariff,
      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<ResponsibleTourism> responsibletourism = [
  ResponsibleTourism(
      name: "A Day With the Farmers",
      description:
          "Kavanattinkara - Cheepumkal - Kalppuzhamuttu – Manchadikkari Traditional Coir Making Unit - Duck Farm -Village Boating - Farm Fishing - Toddy Tapping-Coconut Leaf Weaving-Screw Pine Weaving-Vegetable Farm - Bird Watching-Village Life Experience - Backwater Trek Guide Service/Lunch/ Transportation etc. ",
      //iconData :Icons.hotel_class_outlined,
      tariff: "\u{20B9} 2,500/- per head",
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  ResponsibleTourism(
      name: "Village Life Experience at Kumarakom ",
      description:
          "Kumarakom - Anganvady Visit - Weaving-Making of Miniature Snake Boats Toddy Tapping - Karimeen Farm - Village Boat Ride - Bow and Arrow Fishing - Village Walking (Half Day Tour) Guide Service/Refreshments/Transport, etc. ",
      //iconData :Icons.hotel_class_outlined,
      tariff:"\u{20B9} Rs. 1,500/- per head",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
];
