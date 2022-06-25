import 'package:flutter/material.dart';

class Shopping {
  final String name, description, phone;

  final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  Shopping(
      {required this.description,
      required this.name,
      required this.phone,
      required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<Shopping> shopping = [
  Shopping(
      name: "Bhima Jewellers",
      description: "TB Road,Market",
      phone: "2566256",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Shopping(
      name: "Kalyan Jewellers",
      description: "Near Joyce Bar, YMCA Road ",
      phone: "2302733",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Shopping(
      name: "Alapatt Jewellery ",
      description: "YMCA Rd",
      phone: "2385951",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Parakkat Jewellers",
      description: " Near Pvt Bus Stand, Thalayolaparambu",
      phone: " 04829-231655",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Shopping(
      name: "Atlas Jewellery ",
      description: " Kavala, Changanacherry ",
      phone: "2420764",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Shopping(
      name: "Joy Alukkas Jewellery",
      description: "T.B. Road",
      phone: "2300999",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Malabar Gold ",
      description: "Baker Juntion. Near Modern Diagnostics",
      phone: "2560916, 2561916, 2562916 ",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Shopping(
      name: "Francis The Crown Jewellers ",
      description: " Chackalayil Buidings , K.K. Road , Thirunakkara ",
      phone: "2303555",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Shopping(
      name: "Josco Jewellers",
      description: "Near Thirunakkara Jn",
      phone: "2564825",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Textiles ",
      description: "Emmanual Silks, Near Collectorate ",
      phone: " 0481-2302833, 34, 35, 36",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
