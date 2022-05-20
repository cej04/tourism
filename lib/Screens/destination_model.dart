// import 'package:ktmtourism/Screens/activity_model.dart';

class Destination {
  String imageU;
  String Desc,AirDesc,TrainDesc,RoadDesc,title;
 
 
  List<String> activities;

  Destination ({
    required this.imageU,
    required this.title,
   required this.Desc,
   required this.AirDesc,
   required this.TrainDesc,
   required this.RoadDesc,
    
    required this.activities
  });
}

// List<Activity> activities =[
//   Activity(
//     imageU :"assets/images/waterscapes.jpg",
//   name:"waterscapes",
//   type:"tour",
//   gallery:['assets/images/waterscapes.jpg','assets/images/juma.jpg','assets/images/juma.jpg','assets/images/juma.jpg','assets/images/juma.jpg'],
//   rating:5,
//   price:30
//   ),

  //  Activity(
  //    imageU :"assets/images/weather.jpg",
  // name:"weather",
  // type:"weather",
  // gallery:['assets/images/weather.jpg','assets/images/waterscapes.jpg'],
  // rating:5,
  // price:40
  // ),
  
  //];

  List<Destination> destinations =[
    Destination(imageU: "assets/images/poonjarkottaram.jpg", 
    title: "Poonjar Palace ",
    Desc: "The Poonjar Palace in Meenachil taluk is a glorious testimony to the regal opulence of a bygone era. With the palace walls, is an extra ordinary royal collection of antiques and exquisite furniture which include a palanquin, a thoni carved out of a single piece of wood for ayurvedic massages, huge chandeliers, palm leaf engravings, jewel boxes, a variety of lamps, sculptures of Nataraja (dancing Lord Siva ), grain measures, statues and weapons. A unique couch preserved here is taken out once a year for ritualistic purposes. Near the palace is an amazing replica of the Madurai Meenakshi Temple. The walls of this temple have sculptures with war fare stories from the Puranas (the legends of ancient India ). However the most fascinating thing here is the Chuttuvilakku (row of lamps) carved out on the stonewalls of the Sastha Temple nearby. Such rocks cut lamps are rare in India.",
    AirDesc:"Nearest airports are:\n\n Cochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport, \n\nThiruvananthapuram District (196 Km)",  
    TrainDesc:"Railway Station Kottayam (43 Km)\n\n (Enquiry : 0481-2563535, 2567360, 2567491)",
    RoadDesc:"KSRTC, Kottayam (45 Km)\n\n (Enquiry: 0481 2562908)",
    activities: [
      "assets/images/poonjarkottaram.jpg","assets/images/poonjar1.jpg","assets/images/poonjar2.jpg"
      
      ]),
  Destination(imageU: "assets/images/juma.jpg", 
  title:"Thazhathangadi Juma Masjid",
    Desc: "The Thazhathangadi Juma Masjid is one of the oldest mosques in India (about 1,000 years old). It is believed that Habib Dinar (son of Malik Dinar who introduced Kerala to Islam) constructed the masjid. It is built in the traditional Kerala style of architecture. It is famous for its richness of architecture, wood caring and the beauty. This mosque is situated on the bank of Meenachil river.",
    AirDesc:"Nearest airports are :\n\nCochin International Airport, \n\nErnakulam District (90 Km)& Trivandrum International Airport,\n\n Thiruvananthapuram District (153.5 Km)",  
    TrainDesc:"Railway Station Kottayam (4 Km)\n\n (Enquiry : 0481-2563535, 2567360, 2567491)",
    RoadDesc:"KSRTC, Kottayam (4 Km) \n\n(Enquiry: 0481 2562908)", 
    activities: ["assets/images/juma.jpg","assets/images/jumaHeritage1.jpg","assets/images/jumaHeritage2.jpg"]),

  ];
