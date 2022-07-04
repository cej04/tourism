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
      phone: " +91482 9231655",
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
      phone: "+91481 2300999",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Malabar Gold ",
      description: "Baker Juntion. Near Modern Diagnostics",
      phone: "+91481 2560916,+91481  2561916,+91481  2562916 ",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Shopping(
      name: "Francis The Crown Jewellers ",
      description: " Chackalayil Buidings , K.K. Road , Thirunakkara ",
      phone: "+91481 2303555",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Shopping(
      name: "Josco Jewellers",
      description: "Near Thirunakkara Jn",
      phone: "+91481 2564825",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Kasavukada ",
      description: "",
      phone: " +91481  2566840",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
        Shopping(
      name: "Textiles",
      description: " Seemati",
      phone: "+91481 2563396",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
       Shopping(
      name: "Textiles",
      description: "Parthas",
      phone: "+91481 2374175 ,+91481  2374177",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
       Shopping(
      name: "Textiles ",
      description: "Narmada",
      phone: " +91481 2563183",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
