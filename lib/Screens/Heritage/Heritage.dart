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
        "Tharavadu Heritage Home",
        "Taj Kumarakom Resort & Spa",
        "Hotel Arcadia"
      ],
      cate: [
        "Hotel",
        "Resort",
        "4 Star Hotel",
        "Hotel"
      ],
      web: [
        "https://www.keralatourism.org/hotels/club-mahindra-kumarakom/2697",
        "https://www.keralatourism.org/resorts/tharavadu-heritage-home/3679",
        "https://www.keralatourism.org/hotels/taj-kumarakom-resort-spa/2197",
        "https://www.keralatourism.org/hotels/hotel-arcadia/2714"
      ],
      dis: [
        "8.1 km",
        "8.6 km",
        "9.7 km",
        "1.8 km"
      ]),
  Heritage(
      name: "Kaduthuruthi Valiapalli",
      image: "assets/place/hr-valiyapalli.jpg",
      desc:
          "Situated on MC Road between Ettumanoor and Vaikom in Kottayam, the Kaduthuruthi Valiya Palli was Built in 500 AD. The church has a huge cross sculpted out of a single stone at the entrance.",
      reach:
          "Nearest railway station: Ettumanoor, about 16 km and Kottayam, about 26 km\n\nNearest airport: Cochin International Airport, about 65 km",
      latitude: 9.763874,
      longitude: 76.491508,
      stayimage: [
        "assets/thumb/hr-valiya-pranaya.jpg",
        "assets/thumb/hr-valiya-castle.jpg",
        "assets/thumb/hr-valiya-vetti.jpg",
        "assets/thumb/hr-valiya-vijaya.jpg"
      ],
      title: [
        "Pranayakulam spiritual home",
        "Castle Residency",
        "Hotel Vettikattu Plaza",
        "Vijaya Park"
      ],
      cate: [
        "Silver House Homestay",
        "4 Star Hotel",
        "Hotel",
        "4 Star Hotel"
      ],
      web: [
        "https://www.keralatourism.org/homestays/pranayakulam-spiritual-home/4771",
        "https://www.keralatourism.org/hotels/castle-residency/2185",
        "https://www.keralatourism.org/hotels/hotel-vettikattu-plaza/2725"
      ],
      dis: [
        "9.5 km",
        "6.6 km",
        "8.8 km",
        "5.9 km"
      ]),
  Heritage(
      name: "Thaliyil Mahadeva Temple Thazhathangadi",
      image: "assets/place/hr-thaliyil.jpg",
      desc:
          "The Thaliyil Mahadeva temple is situated near Uppoottikkavala at Thazhathangadi in Kottayam. It was an important place of worship for the erstwhile Thekkumkoor Rajas. The main idol here is that of Lord Shiva. The fort that used to be around the temple was known as Thalikotta (kotta means fort).",
      reach:
          "Nearest railway station: Kottayam, about 3 km\n\nNearest airport: Cochin International Airport, about 91 km",
      latitude: 9.596222,
      longitude: 76.506336,
      stayimage: [
        "assets/thumb/hr-thali-illi.jpg",
        "assets/thumb/hr-thali-back.jpg",
        "assets/thumb/hr-valiya-vetti.jpg",
        "assets/thumb/hr-thali-kumarakom.jpg"
      ],
      title: [
        "Illikkalam Lakeside Cottages",
        "Backwater Heritage",
        "Hotel Vettikattu Plaza",
        "Kumarakom Lake Resort"
      ],
      cate: [
        "Hotel Silver Star",
        "Homestay",
        "Hotel",
        "Hotel"
      ],
      web: [
        "https://www.keralatourism.org/hotels/illikkalam-lakeside-cottages/2701",
        "https://www.keralatourism.org/homestays/backwater-heritage/1102",
        "https://www.keralatourism.org/hotels/hotel-vettikattu-plaza/2725",
        "https://www.keralatourism.org/hotels/kumarakom-lake-resort/2704"
      ],
      dis: [
        "9.3 km",
        "4.2 km",
        "9.9 km",
        "8.4 km"
      ]),
  Heritage(
      name: "The Old Seminary, Kottayam",
      image: "assets/place/hr-oldseminary.jpg",
      desc:
          "The Old Seminary, Marthoma Seminary and Vadavathoor Seminary proclaim Syrian and Roman Christian traditions. It is located in the district of Kottayam in Kerala.",
      reach:
          "Nearest railway station: Kottayam, about 300 meters away\nNearest airport: Cochin International Airport, about 65 km away",
      latitude: 9.593006,
      longitude: 76.531359,
      stayimage: [
        "assets/thumb/hr-old-cheru.jpg",
        "assets/thumb/hr-old-excali.jpg",
        "assets/thumb/hr-old-windsor.jpg",
        "assets/thumb/hr-old-palms.jpg"
      ],
      title: [
        "Cherukattu Mana Hermitage",
        "Hotel Excalibur",
        "The Windsor Castle Leisure Hotel",
        "The Palms"
      ],
      cate: [
        "Grihastali Heritage",
        "4 Star Hotel",
        "Hotel",
        "Hotel"
      ],
      web: [
        "https://www.keralatourism.org/grihastali/cherukattu-mana-hermitage/3924",
        "https://www.keralatourism.org/hotels/hotel-excalibur/2136",
        "https://www.keralatourism.org/hotels/the-windsor-castle-leisure-hotel/2723",
        "https://www.keralatourism.org/hotels/the-palms/3754"
      ],
      dis: [
        "3.6",
        "6.3",
        "2.6",
        "8.2"
      ]),
  Heritage(
      name: "Juma Masjid Thazhathangadi",
      image: "assets/place/hr-jumamasjid.jpg",
      desc:
          "An old ancient mosque situated on the banks of the Meenachil River in Kottayam,Juma Masjid at Thazhathangadi is an architectural marvel. Believed to be 1000 years old, it is considered one of the oldest mosques in India. A square inner-courtyard, an exquisitely carved wooden gabled roof, a traditional bathing area and lovely latticed windows resembling a temple or a king's palace make it a delight to behold. Only men are allowed entry to this historic site.\n\nMosque timings: 07:00 - 18:00 hrs.",
      reach:
          "Nearest railway station: Kottayam, via Kottayam - Kumarakom Road, about 4 km\n\nNearest airport: Cochin International Airport, via National Highway 48 km",
      latitude: 9.594233,
      longitude: 76.501787,
      stayimage: [
        "assets/thumb/hr-juma-kodian.jpg",
        "assets/thumb/hr-juma-meena.jpg",
        "assets/thumb/hr-juma-vedas.jpg",
        "assets/thumb/hr-cheria-arcadia.jpg"
      ],
      title: [
        "Kodianthara Heritage Home",
        "Meenakshi Homestay",
        "Vedasparsh Ayurveda Center",
        "Hotel Arcadia"
      ],
      cate: [
        "Grihastali Heritage Classic",
        "Homestay Gold House",
        "Ayurveda Centre Green Leaf",
        "Hotel"
      ],
      web: [
        "https://www.keralatourism.org/grihastali/kodianthara-heritage-home/3764",
        "https://www.keralatourism.org/homestays/meenakshi-homestay/356",
        "https://www.keralatourism.org/ayurveda-centres/vedasparsh-ayurveda-center/3299",
        "https://www.keralatourism.org/hotels/hotel-arcadia/2714"
      ],
      dis: [
        "7.1 km",
        "8.5 km",
        "8.5 km",
        "2.4 km"
      ]),
  Heritage(
      name: "St.Joseph's Monastery, Mannanam",
      image: "assets/place/hr-mannanam.jpg",
      desc:
          "St. Joseph's Monastery at Mannanam in Kottayam district of Kerala, was built by the blessed Saint Father Chavara Kuriakose Elias. The mortal remains of this saintly priest are preserved here. Thousands of devotees gather here to pay homage to the saint every day.",
      reach:
          "Nearest railway station: Kottayam, about 10 km\n\nNearest airport: Cochin International Airport, about 84 km",
      latitude: 9.647123,
      longitude: 76.519504,
      stayimage: [
        "assets/thumb/hr-mannanam-indra.jpg",
        "assets/thumb/hr-juma-meena.jpg",
        "assets/thumb/hr-old-excali.jpg",
        "assets/thumb/hr-mannanam-back.jpg"
      ],
      title: [
        "Hotel Indraprastha",
        "Meenakshi Homestay",
        "Hotel Excalibur",
        "Backwater Heritage"
      ],
      cate: [
        "4 Star Hotel",
        "Homestay Gold House",
        "4 Star Hotel",
        "Homestay"
      ],
      web: [
        "https://www.keralatourism.org/hotels/hotel-indraprastha/2187",
        "https://www.keralatourism.org/homestays/meenakshi-homestay/356",
        "https://www.keralatourism.org/hotels/hotel-excalibur/2136",
        "https://www.keralatourism.org/homestays/backwater-heritage/1102"
      ],
      dis: [
        "5.2 km",
        "9.8 km",
        "3.1 km",
        "5.0 km"
      ])
];
