// import 'package:ktmtourism/Screens/activity_model.dart';

class Recreational {
  String imageU;
  String Desc, AirDesc, TrainDesc, RoadDesc, title;
  double lat, long;

  List<String> RecreationalImg;

  Recreational(
      {required this.imageU,
      required this.title,
      required this.Desc,
      required this.AirDesc,
      required this.TrainDesc,
      required this.RoadDesc,
      required this.lat,
      required this.long,
      required this.RecreationalImg});
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

List<Recreational> recreational = [
  Recreational(
      imageU: "assets/images/vembanad.jpg",
      title: "Vembanad Lake",
      Desc:
          "Kottayam has a vast network of rivers and canals, which empty into the great expanse of water called the Vembanad Lake, a fast developing backwater tourism destination. Vembanad Lake is having 83.72km length and 14.48km width. Traditional Cargo boats called Kettuvallams are modified into Cruise boats and House boats, with all basic facilities like kitchen, toilet, bathrooms, sit outs etc. These boats gracefully move around the back waters, providing facilities to tourist to enjoy the beauty of the Vembanad Lake in a relaxed pace. The Kumarakom tourist village offers house boat cruises and holiday packages.\n\nIn the Vembanad Lake there is a small beautiful island called Pathiramanal or the Midnight sands. This lonely island in the Vemabanad Lake is accessible only by boat\n\nBoat Races\n\nIn the festive months of August and September, the rivers in and near Kottayam are turned into festival centres. The serene lakes come alive during Onam with a spectacular water regatta – the snake boat races. It is amazing to watch oarsmen, at least a hundred in one boat, slice their way through the waters to the fast rhythm of their own full throated singing. In the Kumarakom boat race conducted at Kavanar and Kottathodu rivers, about 50 types of boats viz veppu, ody, churulan and few snake boats participate.",
      AirDesc:
          "Nearest airports are:\n\n Cochin International Airport, \n\nErnakulam District (74.3 Km)& Trivandrum International Airport, \n\nThiruvananthapuram District (163.8 Km)",
      TrainDesc:
          "Railway Station Kottayam (15 Km) \n\n(Enquiry : 0481-2563535, 2567360, 2567491)",
      RoadDesc: "KSRTC, Kottayam (14 Km) \n\n(Enquiry: 0481 2562908)",
      RecreationalImg: [
        "assets/images/vembanad.jpg",
        "assets/images/vembanad1.jpg",
        "assets/images/vembanad2.jpg",
      ],
      lat: 9.5917,
      long: 76.39471),
  Recreational(
      imageU: "assets/images/sanctuary.jpg",
      title: "Bird Sanctuary ,Kumarakom",
      Desc:
          "An attraction of Kumarakom is the Bird sanctuary spreading over 14 acres of land. Located on the banks of the Vembanad Lake, the sanctuary is a favourite haunt of migratory birds like the Siberian Stork, egret, darter, heron and teal. Local birds like the water fowl, cuckoo, owl and water hen, other common varieties like the wood pecker, sky lark, crane and parrots can also be spotted here. 91 Species of local 50 species of migratory birds are found here. The best time to bird watch is June-August and migratory birds during November-February. A cruise along the Vembanad Lake is the best way to experience the sanctuary.House Boats and motorboats are available on hire for bird watching cruises in the Lake.",
      AirDesc:
          "Nearest airports are: Cochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport, \n\nThiruvananthapuram District (163.8 Km)",
      TrainDesc:
          "Railway Station Kottayam (19 Km)\n\n(Enquiry : 0481-2563535, 2567360, 2567491)",
      RoadDesc: "KSRTC, Kottayam (18 Km) \n\n(Enquiry:0481 2562908)",
      RecreationalImg: [
        "assets/images/sanctuary.jpg",
        "assets/images/sanctuary1.jpg",
        "assets/images/sanctuary2.jpg"
      ],
      lat: 9.629715,
      long: 76.423768),

  // Recreational(
  //     imageU: "assets/images/kumarakom.jpg",
  //     title: "Kumarakom",
  //     Desc:
  //         "Kumarakom gained national and international importance with the visit of the Hon’ble Prime minister A.B. Vajpayee in 2000 December.\n\nKumarakom is a small village 14 km. west of Kottayam. It is a part of Kuttanad, which is a ‘ wonder land ‘, lying below sea level, comprising of a number of islands, in the back waters. Kumarakom Village covers an area of 5166 Ha of which 2413 Ha is lake portion, 1500 Ha is paddy fields and the remaining portion of 1253 Ha is dry land. Kumarakom is an unbelievably beautiful paradise of mangrove forests, emerald green paddy fields and coconut groves interspersed with enchanting waterways and canals adorned with white lilies. Situated on the Vembanad Lake, this small water world has plenty of traditional country boats, crafts and canoes which will take you in to the heart of scenic Kerala. The resorts near by offer comfortable accommodation and exclusive leisure options like Ayurvedic massages, Yoga and meditation besides boating, fishing, angling and swimming.\n\nIn the last Century, Henry Baker, an English man, attracted by the beauty of the place, selected Kumarakom as his residence and built a bungalow, obtaining 104 acres of land from the then Maharaja of Travancore. He also made a beautiful garden. Preserving the old style, the beautiful bungalow of Baker has now been modified into the Taj Garden Retreat, a hotel with modern living facilities. The Kerala State Tourism Development Corporation is converting this place into a Tourist Complex. K.T.D.C. has constructed A.C. Cottages here and it runs a floating restaurant. The Corporation also provides boating facilities.",
  //     AirDesc:
  //         "Nearest airports are Cochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport,\n\n Thiruvananthapuram District (163.8 Km)",
  //     TrainDesc:
  //         "Railway Station Kottayam (16 Km)\n\n (Enquiry : 0481-2563535, 2567360, 2567491)",
  //     RoadDesc: "KSRTC, Kottayam (15 Km) \n\n(Enquiry:0481 2562908)",
  //     RecreationalImg: [
  //       "assets/images/kumarakom.jpg",
  //       "assets/images/kumarakom1.jpg",
  //       "assets/images/kumarakom2.jpg"
  //     ],
  //     lat: 9.583331,
  //     long: 76.4333316),

// NaturalScenic(imageU: "assets/images/vembanad.jpg",
//   title:"Vembanad Lake",
//     Desc: "Kottayam has a vast network of rivers and canals, which empty into the great expanse of water called the Vembanad Lake, a fast developing backwater tourism destination. Vembanad Lake is having 83.72km length and 14.48km width. Traditional Cargo boats called Kettuvallams are modified into Cruise boats and House boats, with all basic facilities like kitchen, toilet, bathrooms, sit outs etc. These boats gracefully move around the back waters, providing facilities to tourist to enjoy the beauty of the Vembanad Lake in a relaxed pace. The Kumarakom tourist village offers house boat cruises and holiday packages.\n\nIn the Vembanad Lake there is a small beautiful island called Pathiramanal or the Midnight sands. This lonely island in the Vemabanad Lake is accessible only by boat.\n\nBoat Races\n\nIn the festive months of August and September, the rivers in and near Kottayam are turned into festival centres. The serene lakes come alive during Onam with a spectacular water regatta – the snake boat races. It is amazing to watch oarsmen, at least a hundred in one boat, slice their way through the waters to the fast rhythm of their own full throated singing. In the Kumarakom boat race conducted at Kavanar and Kottathodu rivers, about 50 types of boats viz veppu, ody, churulan and few snake boats participate.",
//     AirDesc:"Nearest airports are :\n\nCochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport, \n\nThiruvananthapuram District (163.8 Km)",
//     TrainDesc:"Railway Station Kottayam (15 Km) \n\n(Enquiry : 0481-2563535, 2567360, 2567491)",
//     RoadDesc:"KSRTC, Kottayam (14 Km)\n\n(Enquiry: 0481 2562908)",
//     NaturalScenicImg: ["assets/images/vembanad.jpg","assets/images/vembanad1.jpg","assets/images/vembanad2.jpg"]),

// NaturalScenic(imageU: "assets/images/vagamon.jpg",
//   title:"vagamon",
//     Desc: "Situated 64kms from Kottayam, this enchanting hill station at an elevation of 1100 metres above sea level is a trekker’s paradise. This enchanting hill station on the Idukki – Kottayam border dotted with tea gardens and meadows, will soon be one of India’s foremost Eco tourism projects. The breeding centre of the Kerala Live stock Board is located here.",
//     AirDesc:"Nearest airports are :\n\nCochin International Airport, \n\nErnakulam District (98.4 Km)& Trivandrum International Airport,\n\n Thiruvananthapuram District (192.4 Km)",
//     TrainDesc:"Railway Station Kottayam (62 Km)\n\n (Enquiry: 0481-2563535, 2567360, 2567491)",
//     RoadDesc:"KSRTC, Kottayam (64 Km)\n\n (Enquiry: 0481 2562908)",
//     NaturalScenicImg: ["assets/images/vagamon.jpg","assets/images/vagamon1.jpg","assets/images/vagamon2.jpg"]),

// NaturalScenic(imageU: "assets/images/sanctuary.jpg",
//   title:"kumarakom Bird sanctuary",
//     Desc: "An attraction of Kumarakom is the Bird sanctuary spreading over 14 acres of land. Located on the banks of the Vembanad Lake, the sanctuary is a favourite haunt of migratory birds like the Siberian Stork, egret, darter, heron and teal. Local birds like the water fowl, cuckoo, owl and water hen, other common varieties like the wood pecker, sky lark, crane and parrots can also be spotted here. 91 Species of local 50 species of migratory birds are found here. The best time to bird watch is June-August and migratory birds during November-February. A cruise along the Vembanad Lake is the best way to experience the sanctuary.House Boats and motorboats are available on hire for bird watching cruises in the Lake.",
//     AirDesc:"Nearest airports are :\n\nCochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport, \n\nThiruvananthapuram District (163.8 Km)",
//     TrainDesc:"Railway Station Kottayam (19 Km)\n\n (Enquiry : 0481-2563535, 2567360, 2567491)",
//     RoadDesc:"KSRTC, Kottayam (18 Km)\n\n (Enquiry:0481 2562908)",
//     NaturalScenicImg: ["assets/images/sanctuary.jpg","assets/images/sanctuary1.jpg","assets/images/sanctuary2.jpg"]),

// NaturalScenic(imageU: "assets/images/kumarakom.jpg",
//   title:"kumarakom ",
//     Desc: "Kumarakom gained national and international importance with the visit of the Hon’ble Prime minister A.B. Vajpayee in 2000 December.\n\nKumarakom is a small village 14 km. west of Kottayam. It is a part of Kuttanad, which is a ‘ wonder land ‘, lying below sea level, comprising of a number of islands, in the back waters. Kumarakom Village covers an area of 5166 Ha of which 2413 Ha is lake portion, 1500 Ha is paddy fields and the remaining portion of 1253 Ha is dry land. Kumarakom is an unbelievably beautiful paradise of mangrove forests, emerald green paddy fields and coconut groves interspersed with enchanting waterways and canals adorned with white lilies. Situated on the Vembanad Lake, this small water world has plenty of traditional country boats, crafts and canoes which will take you in to the heart of scenic Kerala. The resorts near by offer comfortable accommodation and exclusive leisure options like Ayurvedic massages, Yoga and meditation besides boating, fishing, angling and swimming.\n\nIn the last Century, Henry Baker, an English man, attracted by the beauty of the place, selected Kumarakom as his residence and built a bungalow, obtaining 104 acres of land from the then Maharaja of Travancore. He also made a beautiful garden. Preserving the old style, the beautiful bungalow of Baker has now been modified into the Taj Garden Retreat, a hotel with modern living facilities. The Kerala State Tourism Development Corporation is converting this place into a Tourist Complex. K.T.D.C. has constructed A.C. Cottages here and it runs a floating restaurant. The Corporation also provides boating facilities.",
//     AirDesc:"Nearest airports are :\n\n Cochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport,\n\n Thiruvananthapuram District (163.8 Km)",
//     TrainDesc:"Railway Station Kottayam (16 Km) \n\n(Enquiry : 0481-2563535, 2567360, 2567491)",
//     RoadDesc:"KSRTC, Kottayam (15 Km)\n\n (Enquiry:0481 2562908)",
//     NaturalScenicImg: ["assets/images/kumarakom.jpg","assets/images/kumarakom1.jpg","assets/images/kumarakom2.jpg","assets/images/kumarakom3.jpg","assets/images/kumarakom4.jpg"]),
];
