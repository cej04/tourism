class Heritage {
  final String name, image, desc, visit, contact, reach, stay;
  List<String> stayimage, title, cate, web, dis;

  double latitude, longitude;

  Heritage(
      {required this.name,
      required this.image,
      this.desc = "",
      this.visit = "",
      this.contact = "",
      this.reach = "",
      this.stay = "",
      required this.latitude,
      required this.longitude,
      required this.stayimage,
      required this.title,
      required this.cate,
      required this.web,
      required this.dis});
}

List<Heritage> heritage = [
  Heritage(
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
  Heritage(
      name: "St. Mary's Orthodox Church, Cheriapalli",
      image: "assets/place/hr-cheriapalli.jpg",
      desc:
          "Built in 1579 by Thekkumkoor Maharajah, St. Mary’s Orthodox Syrian Church, popularly known as Kottayam Cheriapalli, displays outstanding architecture which is a blend of Kerala and Portuguese styles. The walls are adorned with beautiful murals made in oriental and western styles on biblical and non-biblical themes. Feast Day: January 15.\n\nChurch Timings: 0800 to1800 hrs\n\nFor details contact:-\nKottayam Cheriapally\nSt. Mary’s Orthodox Syrian Church\nCheriapally Junction\nKottayam - Kumarakom Road\nKottayam - 686001\nPhone: +91 481 2566744\nEmail: office@kottayamcheriapally.com, prayers@kottayamcheriapally.com\nWebsite: www.kottayamcheriapally.com",
      reach:
          "Nearest railway station: Kottayam, about 3 km\n\nNearest airport: Cochin International Airport, about 91 km",
      latitude: 9.597341,
      longitude: 76.510275,
      stayimage: [
        "assets/thumb/hr-cheria-club.jpg",
        "assets/thumb/hr-cheria-tharavadu.jpg",
        "assets/thumb/hr-cheria-taj.jpg",
        "assets/thumb/hr-cheria-arcadia.jpg"
      ],
      title: [
        "Club Mahindra Kumarakom",
        "Tharavadu Heritage Home", "Taj Kumarakom Resort & Spa", "Hotel Arcadia"
      ],
      cate: [
        "Hotel",
        "Resort", "4 Star Hotel", "Hotel"
      ],
      web: [
        "https://www.keralatourism.org/hotels/club-mahindra-kumarakom/2697",
        "https://www.keralatourism.org/resorts/tharavadu-heritage-home/3679", "https://www.keralatourism.org/hotels/taj-kumarakom-resort-spa/2197", "https://www.keralatourism.org/hotels/hotel-arcadia/2714"
      ],
      dis: [
        "8.1 km",
        "8.6 km",
        "9.7 km",
        "1.8 km"
      ]),
  Heritage(
      name: "",
      image: "",
      desc: "",
      reach: "",
      latitude: 0,
      longitude: 0,
      stayimage: [""],
      title: [""],
      cate: [""],
      web: [""],
      dis: [""]),
  Heritage(
      name: "",
      image: "",
      desc: "",
      reach: "",
      latitude: 0,
      longitude: 0,
      stayimage: [""],
      title: [""],
      cate: [""],
      web: [""],
      dis: [""]),
  Heritage(
      name: "",
      image: "",
      desc: "",
      reach: "",
      latitude: 0,
      longitude: 0,
      stayimage: [""],
      title: [""],
      cate: [""],
      web: [""],
      dis: [""]),
  Heritage(
      name: "",
      image: "",
      desc: "",
      reach: "",
      latitude: 0,
      longitude: 0,
      stayimage: [""],
      title: [""],
      cate: [""],
      web: [""],
      dis: [""]),
];
