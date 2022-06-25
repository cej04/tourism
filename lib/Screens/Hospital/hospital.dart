import 'package:flutter/material.dart';

class Hospital {
  final String name, description, phone;

  // final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  Hospital(
      {required this.description,
      required this.name,
      required this.phone,
      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<Hospital> hospital = [
  Hospital(
      name: "Medical College",
      description: "",
      phone: "2597284",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "Modern Diagnostic Services",
      description: "Bakery Jn",
      phone: "2567403",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "District Hospital",
      description: "",
      phone: "2563611",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "St.Mary's Hospital",
      description: "",
      phone: "2370177",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "Carithas Mission Hospital ",
      description: " ",
      phone: "2790025",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "Medical Centre",
      description: " ",
      phone: "2562240",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "Karippal Hospital",
      description: "Kalathipady, Vadavathoor ",
      phone: "2570445",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "MGDM ",
      description: "Devagiri PO., Kangazha",
      phone: "2495044",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "Bharath Hospital",
      description: "Azad Lane, Thirunakkara  ",
      phone: "2582947 , 8606259998 ,\n 8606259999",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "Sukhodaya Ayurveda Hospital ",
      description: "Kanjikuzhy ",
      phone: "9847422211, 9744962715",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "SH Medical Centre ",
      description: "Near Nagambadam Bus stand, Nagampadam ",
      phone: "2562239",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "KIMS Hospital",
      description: "Thoothutty Junction, Kudamaloor",
      phone: "6611000",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "General Hospital",
      description: " Kottayam-Kumily Rd ",
      phone: "256 3611 ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "St. Vincent's Hospital",
      description: "Near Church, Kuravilangad ",
      phone: " 04822 231636",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
];
