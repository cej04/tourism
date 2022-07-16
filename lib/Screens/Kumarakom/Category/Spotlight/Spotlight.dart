import 'package:flutter/material.dart';

class Spotlight {
  final String name, description,trailing;

  //final IconData iconData;
  final Color bgcolor;
  Color iconColor;

  Spotlight(
      {required this.description,
      required this.trailing,
      required this.name,
      // required this.iconData,
      required this.bgcolor,
      required this.iconColor});

  get length => null;
}

List<Spotlight> spotlight = [
  Spotlight(
      name: "Aymanam ",
      trailing:"  (1.5 hour boat ride from Kumarakom) ",
      description:
          "Arundhati Roy's novel 'The God of small things' is set in this beautiful village. It is a typical riverside hamlet with scenic backwaters, a vivid green network of rivers and canals, and vast stretches of green paddy fields and coconut farms. \nMigratory birds come seeking this verdant landscape every summer and frolic in its natural splendour. Country boat rides through the interior canals is a great way to relax and enjoy nature's bounties.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Spotlight(
      name: "Cheepumkal ",
      trailing:"(1 km from Kavanattinkara)",
      description:
          "The Public Water Transport Jetty and the House Boat Terminal are located here. Motor boat trips to Maniaparambu, Mannanam and Parippu are a memorable experience. Vast stretches of paddy fields, coconut farms, plantain farms and the village life of the local people can be seen here.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Spotlight(
      name: "Daivathinte Munamb ",
      trailing: "(7 km fom Kumarakom)",
      description:
          "Daivathinte Munamb (God's island), is an enchanting picnic spot, which provides boating. fishing and sightseeing experiences. Walking along the banks of the lake is a memorable experience. Life of the local people can be observed very closely here.\nThe small island, a little far away from the main shore, is fascinating and offers a beautiful view of the sunset.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Spotlight(
      name: "Kaippuzhamuttu ",
      trailing:" (2 km from Kavanattinkara Boat Terminal) ",
      description:
          "Houseboat making units, traditional coir making units, coconut processing centres, duck farms, paddy fields, migratory birds, etc. are some of the attractions at this scenic place.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Spotlight(
      name: "Kannadichal",
      trailing: " (3 km from Kumarakom)",
      description:
          "Witness various types of traditional fishing techniques practiced by the villagers at Kannadichal. During the harvest season, tonnes of paddy is harvested from this place. \nMigratory birds and common birds can also be seen here. The one hour sightseeing trip through the winding canal in a country boat via Naragathara, Muthalymada, Mathrankayal to Daivathinte Munamb is an unforgettable experience.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Spotlight(
      name: "Manchadikkari ",
      trailing: "(4 km from the BoatTerminal at Kavanattinkara)",
      description:
          "With its unending vast green paddy fields and vegetable farms, and practices like toddy tapping, net fishing, country boat rides, screw pine weaving, coconut leaf weaving, traditional coir making unit, duck farms and bird watching. \nManchadikkari has much in store for tourists. This place provides a truly unique village experience. In the summer season, migratory birds like the Sibenan stork, darter, egret, heron and common varieties like water hen, crane and skylark can be spotted here.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  Spotlight(
      name: "Mooleapadom  ",
      trailing: "(4 km from Kavanattinkara)",
      description:
          "The unique attraction here is the vellaveesal style of Karimeen fishing (a special technique of fishing using tender coconut leaves that are tied in ropes). A crew of at least eight fishermen is required for this type of fising.\nA ride in a country boat through the narrow canal is a memorable experience. Vegetable farms, toddy tapping, coconut leaf thatched houses and bird watching are the main attractions of this place",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFFF7EC),
      iconColor: Color.fromARGB(255, 236, 199, 119)),
  Spotlight(
      name: "Naragathara ",
      trailing: " (8 km from the Boat Terminal at Kavanattinkara)",
      description:
          "This remote village is where the snake boat race trials are conducted during the festival season in the Malayalam month of Chingam Winding narrow canals, vast stretches of paddy fields, vegetable farms, and migratory and common birds are the other attractions here",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  Spotlight(
      name: "Attamangalam Church ",
      trailing: "(10 km from Kottayam)",
      description:
          "The famed paintings of Saint Parumala Thirumeni by the legendary painter Raja Ravi Varma is preserved at the Attamangalam Church. The canals around the church and the beautiful surroundings are the other interesting sights here.",
      //iconData :Icons.hotel_class_outlined,
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219))
];