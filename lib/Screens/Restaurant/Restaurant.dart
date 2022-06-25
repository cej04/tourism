import 'package:flutter/material.dart';

class Restaurant {
  final String name, description, phone;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  Restaurant(
      {required this.description,
      required this.name,
      required this.phone,
      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<Restaurant> restaurant = [
  Restaurant(
      name: "Tonico Cafe",
      description: "Josco Midtown Square,Near Nehru Stadium",
      phone: "+91481 2560999",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Karimpumkala Restaurant ",
      description: "Adivakkal Building,Pallom",
      phone: "+91481 2434864",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Wheels Restaurant",
      description: "Kottayam-Kumily Road,Kanjikuzhi",
      phone: "+91481 2578145",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Third Place ",
      description: "Jacksons Building, Chelllyozhukkom Road",
      phone: "09995881001",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Favourite ",
      description: "Ozees Complex, Kanjikuzhi ",
      phone: "+91481 2573501",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "12 to 12 Barbeque ",
      description: "Pukadlyil Buildings, Sasthri Road ",
      phone: "+91481 2564894",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Hotel Arya Bhavan Restaurant  ",
      description: "Temple Road, Thirunakara ",
      phone: "+91481 2567009",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Hotel Annapoorna Thellakom  ",
      description: "Kunnath Buildings, Thellakom ",
      phone: "+91481 2790801",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "KFC",
      description: "Manjooran Tower, Kanjikuzhi  ",
      phone: "+91481 2570553",
      //  iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Thali South Indian Restaurant  ",
      description: "KK Road, Opp. Malayala Manorama ",
      phone: "+91481 2560741",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Hotel Indraprastha   ",
      description: "S.H. Mount, Main Central Road ",
      phone: "+91481 2569256",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Hotel Anand ",
      description: "",
      phone: "+91481 2560082",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Ananda Mandiram Hotels ",
      description: "Temple Road ",
      phone: "+91481 2567101",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Basant Hotel  ",
      description: "T.B. Road ",
      phone: "+91481 2561291",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Best Hotel",
      description: "YMCA Road, Central Jn.",
      phone: "+91481 2564000",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Vellrose (Hotel Floral Park) ",
      description: "Gandhi Nagar ",
      phone: " +91481-2597108 ,\n +91481-2597020",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Hotel Rajadhani",
      description: "Post Office Road ",
      phone: "+91481 2566299, +91481 2566999",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
// Restaurant(
// name: "Bar-B-Que Inn ",
//     description: "Family Restaurant,S.H. Mount ",
//    phone: "2302770",
//   //  iconData :Icons.hotel_class_outlined,
//     bgcolor: Color(0XFFEDF4FE),
//     iconColor: Color.fromARGB(255, 96, 151, 219)

// ),
  Restaurant(
      name: " Hotel Joyees Residency",
      description: "YMCA Road ",
      phone: "+91481 2563693, +91481 2563692,\n +91481 2563440",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Punjabi Restaurant ",
      description: "Kalarickal Bazaar ",
      phone: "+91481 2567699",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Trivandrum Chicken Corner",
      description: "Sasthri Road",
      phone: "+91481 2562224",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Shalimar Restaurant",
      description: "Kodimatha",
      phone: "+91481 2561399",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
