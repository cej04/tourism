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
      image: "assets/images/stay.png",
      title: "Rest House ",
      icons: Icons.bed_rounded),
 
  MainSample(
      image: "assets/images/ico_kum.png",
      title: "Kumarakom",
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
      image: "assets/images/Aurveda.png",
      title: "Ayurveda Centre ",
      icons: Icons.bed_rounded),
  MainSample(
      image: "assets/images/stayhome.png",
      title: "Home Stay",
      icons: Icons.holiday_village),
  MainSample(
      image: "assets/images/delight.png",
      title: "Hotel",
      icons: Icons.flatware),
        MainSample(
      image: "assets/images/Resort.png",
      title: "Resort",
      icons: Icons.holiday_village),
  MainSample(
      image: "assets/images/villa.png",
      title: "Serviced Villa",
      icons: Icons.flatware),
        MainSample(
      image: "assets/images/Grihasthali.png",
      title: "Grihasthali",
      icons: Icons.flatware),
       MainSample(
      image: "assets/images/religion.png",
      title: "Pilgrim Centers",
      icons: Icons.holiday_village),
  MainSample(
      image: "assets/images/CulinaryDelight.png",
      title: "Culinary Delights",
      icons: Icons.flatware),
        MainSample(
      image: "assets/images/passenger.png",
      title: "How to Reach",
      icons: Icons.commute_outlined),
];
