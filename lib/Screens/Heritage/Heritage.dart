class Heritage {
  final String name, subname, image, desc, reach, stay;
  double latitude, longitude;

  Heritage(
      {required this.name,
      required this.subname,
      required this.image,
      this.desc = "",
      
      this.reach = "",
      this.stay = "",
      required this.latitude,
      required this.longitude,
      });
}

List<Heritage> heritage = [
  Heritage(
      name: "Poonjar Palace",
      subname: "A great example of the exalted times and memories of a bygone era",
      image: "assets/images/poonjarkottaram.jpg",
      desc:
          "While times and fortunes may change, our monuments act as permanent reminders of the glorious stories that once played out in their hallowed halls. The Poonjar Palace in Kottayam is a great example of the exalted times and memories of a bygone era. Walk in and behold the royal antiques and exotic furniture, a droni (treatment bed) carved out of a single piece of wood for Ayurvedic massages, huge chandeliers, palm leaf engravings, jewel boxes, varieties of lamps, sculptures of Nataraja (the dancing Siva), grain measures, statues and weapons. Lying nearby is a replica of the great Madurai Meenakshi Temple, where ancient sculptures narrate the tales of the Puranas (ancient Indian legends). One is taken for a roller coaster ride through history and its many colourful faces. It is among the most stimulating historical sites in all of Kottayam.",
      reach:
          "Nearest railway station: Kottayam, about 30 km\n\nNearest airport: Cochin International Airport, about 76 km from Kottayam town",
      latitude: 9.6694547,
      longitude: 76.797212,
      stay: "https://www.keralatourism.org/where-to-stay/poonjar-palace-kottayam/15"
      ),
  Heritage(
      name: "Cheriapalli",
      subname: "St. Mary's Orthodox Church, built in 1579 by Thekkumkoor Maharajah",
      image: "assets/place/hr-cheriapalli.jpg",
      desc:
          "Built in 1579 by Thekkumkoor Maharajah, St. Mary’s Orthodox Syrian Church, popularly known as Kottayam Cheriapalli, displays outstanding architecture which is a blend of Kerala and Portuguese styles. The walls are adorned with beautiful murals made in oriental and western styles on biblical and non-biblical themes. Feast Day: January 15.\n\nChurch Timings: 0800 to1800 hrs\n\nFor details contact:-\nKottayam Cheriapally\nSt. Mary’s Orthodox Syrian Church\nCheriapally Junction\nKottayam - Kumarakom Road\nKottayam - 686001\nPhone: +91 481 2566744\nEmail:\noffice@kottayamcheriapally.com,\n prayers@kottayamcheriapally.com\nWebsite: www.kottayamcheriapally.com",
      reach:
          "Nearest railway station: Kottayam, about 3 km\n\nNearest airport: Cochin International Airport, about 91 km",
      latitude: 9.597557,
      longitude: 76.509964,
      stay : "https://www.keralatourism.org/where-to-stay/st-marys-orthodox-church-kottayam/463"
      ),
      Heritage(
      name: "Thaliyil Mahadeva Temple",
      subname: "An important place of worship for the erstwhile Thekkumkoor Rajas",
      image: "assets/place/hr-thaliyil.jpg",
      desc:
          "The Thaliyil Mahadeva temple is situated near Uppoottikkavala at Thazhathangadi in Kottayam. It was an important place of worship for the erstwhile Thekkumkoor Rajas. The main idol here is that of Lord Shiva. The fort that used to be around the temple was known as Thalikotta (kotta means fort).",
      reach:
          "Nearest railway station: Kottayam, about 3 km\n\nNearest airport: Cochin International Airport, about 91 km",
      latitude: 9.597776, 
      longitude: 76.860537,
      stay: "https://www.keralatourism.org/where-to-stay/thaliyil-mahadeva-temple/582"
       ),
       Heritage(
      name: "Juma Masjid Thazhathangadi",
      subname: "Ancient mosque situated on the banks of the Meenachil River",
      image: "assets/place/hr-jumamasjid.jpg",
      desc:
          "An old ancient mosque situated on the banks of the Meenachil River in Kottayam,Juma Masjid at Thazhathangadi is an architectural marvel. Believed to be 1000 years old, it is considered one of the oldest mosques in India. A square inner-courtyard, an exquisitely carved wooden gabled roof, a traditional bathing area and lovely latticed windows resembling a temple or a king's palace make it a delight to behold. Only men are allowed entry to this historic site.\n\nMosque timings: 07:00 - 18:00 hrs.",
      reach:
          "Nearest railway station: Kottayam, via Kottayam - Kumarakom Road, about 4 km\n\nNearest airport: Cochin International Airport, via National Highway 48 km",
      latitude: 9.598413,
      longitude: 76.505390,
      stay: "https://www.keralatourism.org/where-to-stay/juma-masjid-thazhathangadi/465"
      ),
  Heritage(
      name: "Kaduthuruthi Valiapalli",
      subname: "There is a historic granite monolithic cross in front of the church",
      image: "assets/place/hr-valiyapalli.jpg",
      desc:
          "Situated between Ettumanoor and Vaikom in Kottayam, the Kaduthuruthi Valiya Palli was Built in 500 AD. The church has a huge cross sculpted out of a single stone at the entrance. There is a large bell tower on the west side of this church which is an important landmark of this pilgrim center. The ancient bell at this tower is made up of Panchaloham (Five-Metal Alloy). The church has been practicing first Friday celebration for many years which is an ancient tradition of this great holy spot.",
      reach:
          "Nearest railway station: Ettumanoor, about 16 km and Kottayam, about 26 km\n\nNearest airport: Cochin International Airport, about 65 km",
      latitude: 9.763072, 
      longitude: 76.4907656,
      stay: "https://www.keralatourism.org/where-to-stay/kaduthuruthi-valiapalli/481",
      ),
  
  Heritage(
      name: "The Old Seminary",
      subname: "Proclaim Syrian and Roman Christian traditions",
      image: "assets/place/hr-oldseminary.jpg",
      desc:
          "The Old Seminary, Marthoma Seminary and Vadavathoor Seminary proclaim Syrian and Roman Christian traditions. It is located in the district of Kottayam in Kerala.",
      reach:
          "Nearest railway station: Kottayam, about 300 meters away\nNearest airport: Cochin International Airport, about 65 km away",
      latitude: 9.603935,
      longitude: 76.510357,
      stay: "https://www.keralatourism.org/where-to-stay/old-seminary-kottayam/471"
      ),
  
  Heritage(
      name: "St.Joseph's Monastery, Mannanam",
      subname: "Was built by the blessed Saint Father Chavara Kuriakose Elias",
      image: "assets/place/hr-mannanam.jpg",
      desc:
          "St. Joseph's Monastery at Mannanam in Kottayam district of Kerala, was built by the blessed Saint Father Chavara Kuriakose Elias. The mortal remains of this saintly priest are preserved here. Thousands of devotees gather here to pay homage to the saint every day.",
      reach:
          "Nearest railway station: Kottayam, about 10 km\n\nNearest airport: Cochin International Airport, about 84 km",
      latitude: 9.646548,
      longitude: 76.520207,
      stay: "https://www.keralatourism.org/where-to-stay/st-josephs-monastery-mannanam/480"
      )
];
