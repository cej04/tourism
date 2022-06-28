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
];
