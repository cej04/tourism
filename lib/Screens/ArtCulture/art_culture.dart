import 'package:flutter/material.dart';

class ArtCulture{
  final String image, title,description,type,dish;
  
  ArtCulture({
    required this.image,
    required this.title,
    required this.description,
    required this.type,
    required this.dish
  });
}
List<ArtCulture> artculture = [
  ArtCulture(
    image:"assets/images/margamkali.jpg",
    title: " Margamkali",
    description: "The Folk dances of Kottayam consists of Margamkali and Arjuna Nritham. Margamkali is an art form popular among the Syrian Christian Community of the erstwhile Travancore. This consists of group dances and martial arts like Parichamuttukali. The theme of the songs revolves round the life of St. Thomas. Margamkali is performed by men and women separately.",
    type:"January",
    dish:"null"
),
 ArtCulture(
    image:"assets/images/koodiyattam.jpg",
    title: " Koodiyattam",
    description: "Koodiyatam is the ancient Sanskrit dramatic version of Kerala It is a temple art and has been recognized and approved by UNESCO. This art is very ancient and is supposed to be about 2000 years old. This programme has been staged in several foreign countries many times.",
 type:"November",
 dish:"null"
),


];
