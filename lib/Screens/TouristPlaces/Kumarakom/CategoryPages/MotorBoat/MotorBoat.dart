import 'package:flutter/material.dart';

class MotorBoat {
  final String  title,phone,tariff;
  
  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  MotorBoat(
      {
      required this.title,
required this.phone,
required this.tariff,
      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<MotorBoat> motorboat = [
  MotorBoat(
      title: "Vadakkath Kannadichal,Kannadichal",
     
      phone:"+914812524275",
      tariff: "\u{20B9} 350",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  MotorBoat(
      title: " Angela, Kumarakom Boat Jetty",
    
      phone:"9447152408 ",
      tariff: "\u{20B9} 500 ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
       MotorBoat(
     title: " St. Thomas, Kumarakom Boat Jetty",
          phone:" 9447420585",
      tariff: " \u{20B9} 400 ",
      
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
       MotorBoat(
      title: "Mahima, Kumarakom Boat Jetty",
          phone:" 9446509576",
      tariff: " \u{20B9} 500 ",
      
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  MotorBoat(
  title: "Jerry Mon, Kumarakom Boat Jetty",
          phone:"94468589890 ",
      tariff: "\u{20B9} 400  ",
      
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
       MotorBoat(
   
       title: " Water Lilly, Kumarakom Boat Jetty",
          phone:" 9605924779",
      tariff: " \u{20B9} 500 ",
      
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
         MotorBoat(
       title: "Holy Mary, Kumarakom Boat Jetty",
          phone:" 9447681274",
      tariff: "\u{20B9} 500 ",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),

  
];
