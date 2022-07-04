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
      name: "Government Medical College, Kottayam",
      description: " Gandhi Nagar, Kottayam, Kerala 686008",
      phone: " +91481 2597284",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "Modern Diagnostic Services",
      description: "CMS College Rd, Baker Hill, Kottayam, Kerala 686001",
      phone: "+91481 2567403",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "District Hospital",
      description: " K.K.Road, Kottayam, Manorama Junction, Kottayam - 686004",
      phone: "+91481 2563611",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "St.Mary's Hospital",
      description: "Kidangoor - Manarcadu Rd,Manarcadu, Kerala 686019 ",
      phone: "+91481 2370177",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "Carithas Mission Hospital ",
      description: "Thellakom (po),Kottayam-686630 ",
      phone: "+91481 2790025",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "S.H. Medical Centre",
      description: "S.H. Medical Centre, Nagampadam ",
      phone: "+91481 2562240",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "Karippal Hospital",
      description: "Kalathipady, Vadavathoor ",
      phone: "+91481 2570445",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "MGDM ",
      description: "Devagiri PO., Kangazha",
      phone: "+91481 2495044",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "Bharath Hospital",
      description: "Azad Lane, Thirunakkara  ",
      phone: "+91481 2582947 , 8606259998 ,\n 8606259999",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "Sukhodaya Ayurveda Hospital ",
      description: "Sukhodaya nagar, Kanjirappally ",
      phone: "9847422211, 9744962715",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "SH Medical Centre ",
      description: "Near Nagambadam Bus stand, Nagampadam ",
      phone: "+91481 2562239",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Hospital(
      name: "KIMS Hospital",
      description: " Thoothutty Junction, Kudamaloor, Kottayam",
      phone: "+91481 6611000",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Hospital(
      name: "General Hospital",
      description: " Kottayam-Kumily Rd ",
      phone: "+91481 2563611 ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Hospital(
      name: "St. Vincent's Hospital",
      description: "Near Church, Kuravilangad ",
      phone: " +91482 2231636",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
];
