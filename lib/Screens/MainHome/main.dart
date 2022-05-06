import 'package:flutter/material.dart';

class MainSample{
  final String image ,title;
final IconData icons;  
  MainSample({
    required this.title,
    required this.image,
    required this.icons,
  
  });
}
List<MainSample> mainsample = [
  MainSample(
    image:"assets/images/aboutktm.jpeg",
    title: "About Kottayam",
    icons:  Icons.info
),

MainSample(
      image:"assets/images/vembanattu kayal.jpg",
    title: "Tourist Places",
    icons:  Icons.explore_outlined
    
),


MainSample(
      image:"assets/images/tajhotel.jpg",
    title: "Stay in Kottayam",
    icons: Icons.bed_rounded
    
),
MainSample(
      image:"assets/images/bhmchurch.jpg",
    title: "Pilgrim",
    icons:  Icons.holiday_village
    

),
MainSample(
      image:"assets/images/sadhya.png",
    title: "Culinary Delights",
    icons: Icons.flatware
    

),
MainSample(
      image:"assets/images/woodshaped.jpg",
    title: "Produce",
    icons: Icons.color_lens
    

),
MainSample(
      image:"assets/images/onam.jpg",
    title: "Festival",
    icons: Icons.celebration_rounded
    

),
MainSample(
      image:"assets/images/koodiyattam.jpg",
    title: "Art & Culture",
    icons:  Icons.festival_outlined
    

),
MainSample(
      image:"assets/images/reachktm.png",
    title: "How to Reach",
    icons: Icons.commute_outlined
    

),
];
