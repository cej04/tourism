class Heritage {
  final String name,
      image,
      Desc,
      visit,
      contact,
      reach,
      stay;
    List<String> heritimage,title,cate,web,dis;
    

   double  latitude,longitude;


      
  Heritage({
    required this.name,
    required this.image,
    this.Desc ="",
    this.visit = "",
    this.contact = "",
    this.reach = "",
    this.stay = "",
    required this.latitude,
    required this.longitude,
    required this.heritimage,
   required this.title,
    required this.cate,
    required this.web,
    required this.dis
 
  });
}

List<Heritage> heritage = [
    
  Heritage(
    name: "Poonjar Palace, Kottayam",
    image: "assets/images/poonjarkottaram.jpg",
    Desc:"While times and fortunes may change, our monuments act as permanent reminders of the glorious stories that once played out in their hallowed halls. The Poonjar Palace in Kottayam is a great example of the exalted times and memories of a bygone era. Walk in and behold the royal antiques and exotic furniture, a droni (treatment bed) carved out of a single piece of wood for Ayurvedic massages, huge chandeliers, palm leaf engravings, jewel boxes, varieties of lamps, sculptures of Nataraja (the dancing Siva), grain measures, statues and weapons. Lying nearby is a replica of the great Madurai Meenakshi Temple, where ancient sculptures narrate the tales of the Puranas (ancient Indian legends). One is taken for a roller coaster ride through history and its many colourful faces. It is among the most stimulating historical sites in all of Kottayam.",
   reach:"Nearest railway station: Kottayam, about 30 km\n\nNearest airport: Cochin International Airport, about 76 km from Kottayam town",
    latitude: 9.677922,
    longitude: 76.809139,
    heritimage: [
      "assets/stay/gr-kalaketty.jpg",
    "assets/stay/hs-vanilla.jpg"
    ],
    title: ["Kalaketty Estate","Vanilla County"],
    cate: ["Grihastali","Homestay"],
    web: [],
    dis: ["7.57 km","5.22 km"]
  

  ),
];