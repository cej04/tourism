

class HillStation {
  final String name,
      image,
      desc,
    
      contact,
      reach,
      stay;
    List<String> stayimage,title,cate,web,dis;
    

   double  latitude,longitude;


      
  HillStation({
    required this.name,
    required this.image,
    this.desc ="",
   
    this.contact = "",
    this.reach = "",
    this.stay = "",
    required this.latitude,
    required this.longitude,
    required this.stayimage,
   required this.title,
    required this.cate,
    required this.web,
    required this.dis
 
  });
}

List<HillStation> hillstation = [
    
   HillStation(
      name: "Poonjar Palace, Kottayam",
      image: "assets/images/poonjarkottaram.jpg",
      desc:
          "While times and fortunes may change, our monuments act as permanent reminders of the glorious stories that once played out in their hallowed halls. The Poonjar Palace in Kottayam is a great example of the exalted times and memories of a bygone era. Walk in and behold the royal antiques and exotic furniture, a droni (treatment bed) carved out of a single piece of wood for Ayurvedic massages, huge chandeliers, palm leaf engravings, jewel boxes, varieties of lamps, sculptures of Nataraja (the dancing Siva), grain measures, statues and weapons. Lying nearby is a replica of the great Madurai Meenakshi Temple, where ancient sculptures narrate the tales of the Puranas (ancient Indian legends). One is taken for a roller coaster ride through history and its many colourful faces. It is among the most stimulating historical sites in all of Kottayam.",
      reach:
          "Nearest railway station: Kottayam, about 30 km\n\nNearest airport: Cochin International Airport, about 76 km from Kottayam town",
      latitude: 9.677922,
      longitude: 76.809139,
      stayimage: [
        "assets/thumb/hr-poonjar-lakeview.jpg",
        "assets/thumb/hr-poonjar-kuruvina.jpeg",
        "assets/thumb/hr-poonjar-good.jpg",
        "assets/thumb/hr-poonjar-finch.jpg"
      ],
      title: [
        "Lakeview Palace Resorts",
        "Kuruvinakunnel Tharavad",
        "Good Shepherd Home Stay",
        "Finch Hotels"
      ],
      cate: [
        "Grihastali",
        "Grihastali",
        "Homestay",
        "Hotel"
      ],
      web: [
        "https://www.keralatourism.org/grihastali/lakeview-palace-resorts/4832",
        "https://www.keralatourism.org/grihastali/kuruvinakunnel-tharavad/1407",
        "https://www.keralatourism.org/homestays/good-shepherd-home-stay/5365",
        "https://www.keralatourism.org/hotels/finch-hotels/2732"
      ],
      dis: [
        "9.4 km",
        "8.4 km",
        "6.9 km",
        "3.8 km"
      ]),
];

class AdvancedTile {
  final String title,simage,cate,web,dis;
  final List<AdvancedTile> tiles;
  bool isExpanded;

  AdvancedTile({
    required this.title,
    this.tiles = const [],
    this.simage = "",
    this.cate="",
    this.web="",
    this.dis="",
    this.isExpanded = false,
  });
}
final advancedTiles = <AdvancedTile>[
  AdvancedTile(
   
    title: 'Where to Stay',
    tiles: [
      AdvancedTile(title: 'Lakeview Palace Resorts',simage: "assets/thumb/hr-poonjar-lakeview.jpg",cate: "Grihastali",web:"https://www.keralatourism.org/grihastali/lakeview-palace-resorts/4832",dis:"9.4 km",),
      AdvancedTile(title: 'Kuruvinakunnel Tharavad ',simage: "assets/thumb/hr-poonjar-kuruvina.jpeg",cate: "Grihastali",web:"https://www.keralatourism.org/grihastali/kuruvinakunnel-tharavad/1407",dis:"8.4 km",),
      
    ],
  )];