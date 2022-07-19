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
      phone: "+914812566256",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Shopping(
      name: "Kalyan Jewellers",
      description: "Near Joyce Bar, YMCA Road ",
      phone: "+914812302733",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Shopping(
      name: "Alapatt Jewellery ",
      description: "YMCA Rd",
      phone: "+914812385951",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Parakkat Jewellers",
      description: " Near Pvt Bus Stand, Thalayolaparambu",
      phone: "+914829231655",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Shopping(
      name: "Atlas Jewellery ",
      description: " Kavala, Changanacherry ",
      phone: "+914812420764",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Shopping(
      name: "Joy Alukkas Jewellery",
      description: "T.B. Road",
      phone: "+914812300999",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Malabar Gold ",
      description: "Baker Juntion. Near Modern Diagnostics",
      phone: "+914812560916",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Shopping(
      name: "Francis The Crown Jewellers ",
      description: " Chackalayil Buidings , K.K. Road , Thirunakkara ",
      phone: "+914812303555",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Shopping(
      name: "Josco Jewellers",
      description: "Near Thirunakkara Jn",
      phone: "+914812564825",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Shopping(
      name: "Kasavukada ",
      description: "",
      phone: "+914812566840",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
        Shopping(
      name: "Seemati Textiles",
      description: " ",
      phone: "+914812563396",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
       Shopping(
      name: "Parthas Textiles",
      description: "",
      phone: "+914812374175",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
       Shopping(
      name: "Narmada Textiles ",
      description: "",
      phone: "+914812563183",
      iconData: Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
