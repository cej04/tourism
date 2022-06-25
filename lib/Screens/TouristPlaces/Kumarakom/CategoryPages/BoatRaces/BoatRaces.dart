import 'package:flutter/material.dart';

class BoatRaces {
  final String name, description;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  BoatRaces(
      {required this.description,
      required this.name,
      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<BoatRaces> boatraces = [
  BoatRaces(
      name: "Kumarakom Sreenarayana Jayanthi Boat Race:  ",
      description:
          "The boat races are conducted every year on the Chathayam Naal, the fourth day of Onam. The race starts from Kottathod near Kumarakom Market Junction. The procession in the Kettuvallam (houseboat) through Kottathodu is an attractive sight. Kolkali, Thiruvathira Kali, Garudanthoakkam, Panchavadyam, etc. are performed in the Kettuvallam during the procession. The boat races featuring all types of snake boats are held after the procession.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  BoatRaces(
      name: "Kavanattinkara Tourism Boat Race: ",
      description:
          "This boat race is conducted on the Avittam day of the Malayalam month Chingam Snake boats such as Iruttukuty, Chundan, Churulan, Veppu and Kothumpuvallam participate in the competition, Hundreds of people gather to witness this boat race.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  BoatRaces(
      name: "Kottayam Thazhathangadi Boat Race: ",
      description:
          "This race is conducted during the last week of the Malayalam month of Chingam in the River Meenachil The Chundan snake boat race is the most important event in the race. Vanchipattu competition, relay race, etc. are conducted in connection with the boat race.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219))
];
