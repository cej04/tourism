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
      image: "assets/images/ico_kum.png",
      title: "Backwater",
      icons: Icons.color_lens),
  MainSample(
      image: "assets/images/ico_destination.png",
      title: "Picnic Spots",
      icons: Icons.color_lens),
  MainSample(
      image: "assets/images/ico_heritage.png",
      title: "Heritage",
      icons: Icons.celebration_rounded),
  MainSample(
      image: "assets/images/ico_Hillstation.png",
      title: "Hill Stations",
      icons: Icons.festival_outlined),
  MainSample(
      image: "assets/images/ico_religion.png",
      title: "Pilgrim Centers",
      icons: Icons.holiday_village),
  MainSample(
      image: "assets/images/ico_ayurveda.png",
      title: "Ayurveda Centre ",
      icons: Icons.bed_rounded),
  MainSample(
      image: "assets/images/ico_Grihasthali.png",
      title: "Grihasthali",
      icons: Icons.flatware),
  MainSample(
      image: "assets/images/ico_stay.png",
      title: "Rest House ",
      icons: Icons.bed_rounded),
  MainSample(
      image: "assets/images/ico_Resort.png",
      title: "Resort",
      icons: Icons.holiday_village),
  MainSample(
      image: "assets/images/ico_delight.png",
      title: "Hotel",
      icons: Icons.flatware),
  MainSample(
      image: "assets/images/ico_stayhome.png",
      title: "Home Stay",
      icons: Icons.holiday_village),
  MainSample(
      image: "assets/images/ico_villa.png",
      title: "Serviced Villa",
      icons: Icons.flatware),

];
