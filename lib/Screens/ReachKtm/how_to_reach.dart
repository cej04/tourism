import 'package:flutter/material.dart';

class HowToReach {
  final String image, title, description, category;
  final IconData icon;

  HowToReach(
      {required this.category,
      required this.image,
      required this.title,
      required this.description,
      required this.icon});
}

List<HowToReach> howtoreach = [
  HowToReach(
      image: "assets/images/airplane.jpg",
      icon: Icons.flight,
      title: " By Air",
      description:
          "Nearest airport is Cochin International Airport, Ernakulam District (90 Km)\n\nTrivandrum International Airport, Thiruvananthapuram District (160 Km)",
      category: "Airports"),
  HowToReach(
      image: "assets/images/trains.jpg",
      icon: Icons.train,
      title: " By Rail",
      description:
          "You can easily get regular trains to Kottayam from other major cities of the country. Railway Station Kottayam.",
      category: "Railways"),
  HowToReach(
      image: "assets/images/road.jpg",
      icon: Icons.bus_alert,
      title: "By Road",
      description: "K S R T C BUS STATIONS",
      category: "Roadways"),
];
