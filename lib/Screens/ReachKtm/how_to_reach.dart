import 'package:flutter/material.dart';

class HowToReach{
  final String image, title,description,category;
  
 
  
  
  HowToReach({
    required this.category,
    
    required this.image,
    required this.title,
    required this.description, 
  
  });
}
List<HowToReach> howtoreach = [
  HowToReach(
    image:"assets/images/airplane.jpg",
    title: " By Air",
    description: "Nearest airport is Cochin International Airport, Ernakulam District (90 Km)\n\nTrivandrum International Airport, Thiruvananthapuram District (160 Km)",
    category: "Airports"
),
 HowToReach(
    image:"assets/images/train.jpg",
    title: " By Rail",
    description: "You can easily get regular trains to Kottayam from other major cities of the country. Railway Station Kottayam.",
    category: "Railways"

),
HowToReach(
    image:"assets/images/road.jpg",
    title: "By Road",
    description: "K S R T C BUS STATIONS",
    category:"Roadways"


),




];
