import 'package:flutter/material.dart';

class MainSample {
  final String image, title;
  final IconData icons;
  MainSample({
    required this.title,
    required this.image,
    required this.icons,
  });
}

List<MainSample> mainsample = [
  MainSample(
      image: "assets/images/me.png",
      title: "About Kottayam",
      icons: Icons.info),
  MainSample(
      image: "assets/images/destination.png",
      title: "Tourist Places",
      icons: Icons.explore_outlined),
  MainSample(
      image: "assets/images/stay.png",
      title: "Stay ",
      icons: Icons.bed_rounded),
  MainSample(
      image: "assets/images/religion.png",
      title: "Pilgrim Centers",
      icons: Icons.holiday_village),
  MainSample(
      image: "assets/images/delight.png",
      title: "Culinary Delights",
      icons: Icons.flatware),
  MainSample(
      image: "assets/images/produce.png",
      title: "Produce",
      icons: Icons.color_lens),
  MainSample(
      image: "assets/images/festival.png",
      title: "Festivals",
      icons: Icons.celebration_rounded),
  MainSample(
      image: "assets/images/artbook.png",
      title: "Art & Culture",
      icons: Icons.festival_outlined),
  MainSample(
      image: "assets/images/passenger.png",
      title: "How to Reach",
      icons: Icons.commute_outlined),
];
