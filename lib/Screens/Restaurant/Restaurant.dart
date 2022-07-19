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
      phone: "+914812560999",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Karimpumkala Restaurant ",
      description: "Adivakkal Building,Pallom",
      phone: "+914812434864",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Wheels Restaurant",
      description: "Kottayam-Kumily Road,Kanjikuzhi",
      phone: "+914812578145",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Third Place ",
      description: "Jacksons Building, Chelllyozhukkom Road",
      phone: "+919995881001",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Favourite ",
      description: "Ozees Complex, Kanjikuzhi ",
      phone: "+914812573501",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "12 to 12 Barbeque ",
      description: "Pukadlyil Buildings, Sasthri Road ",
      phone: "+914812564894",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Hotel Arya Bhavan Restaurant  ",
      description: "Temple Road, Thirunakara ",
      phone: "+914812567009",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Hotel Annapoorna Thellakom  ",
      description: "Kunnath Buildings, Thellakom ",
      phone: "+914812790801",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "KFC",
      description: "Manjooran Tower, Kanjikuzhi  ",
      phone: "+914812570553",
      //  iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Thali South Indian Restaurant  ",
      description: "KK Road, Opp. Malayala Manorama ",
      phone: "+914812560741",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Hotel Indraprastha   ",
      description: "S.H. Mount, Main Central Road ",
      phone: "+914812569256",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Hotel Anand ",
      description: "",
      phone: "+914812560082",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Ananda Mandiram Hotels ",
      description: "Temple Road ",
      phone: "+914812567101",
// iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Basant Hotel  ",
      description: "T.B. Road ",
      phone: "+914812561291",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Best Hotel",
      description: "YMCA Road, Central Jn.",
      phone: "+914812564000",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Vellrose (Hotel Floral Park) ",
      description: "Gandhi Nagar ",
      phone: " +914812597108",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Hotel Rajadhani",
      description: "Post Office Road ",
      phone: "+914812566299",
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
      phone: "+914812563693",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Restaurant(
      name: "Punjabi Restaurant ",
      description: "Kalarickal Bazaar ",
      phone: "+914812567699",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Restaurant(
      name: "Trivandrum Chicken Corner",
      description: "Sasthri Road",
      phone: "+914812562224",
      // iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Restaurant(
      name: "Shalimar Restaurant",
      description: "Kodimatha",
      phone: "+914812561399",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
];
