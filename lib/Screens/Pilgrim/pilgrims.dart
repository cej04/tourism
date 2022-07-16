class Pilgrims {
  final String image, title, subtitle, description, reach, stay;
  final double lat, long;

  Pilgrims(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.reach = "",
      required this.description,
      this.stay = "",
      required this.lat,
      required this.long});
}

List<Pilgrims> pilgrims = [
  Pilgrims(
      image: "assets/pilgrim/pil-thirunakkara.jpg",
      title: "Thirunakkara Mahadeva Temple",
      subtitle:
          " 500 year old Temple, built by the erstwhile Thekkumkoor Maharajah",
      description:
          "At the heart of quiet and picturesque Kottayam, lies the 500 year old Thirunakkara Mahadeva Temple, built by the erstwhile Thekkumkoor Maharajah. Its vibrant and colourful murals are among the finest in the State, with the layout of the Temple epitomising the Kerala School of Architecture. No visit is complete without seeing its special Koothambalam, the special building in the Temple premises used for cultural purposes, said to be right up there among the best in all of God’s Own Country.\n\nTemple Timings: 04:00 - 11:00 hrs & 17:00 - 20:00 hrs",
      reach:
          "Nearest railway station: Kottayam, about 2 km away\n\nNearest airport: Cochin International Airport, about 64 km away",
      lat: 9.590933,
      long: 76.518935,
      stay:
          "https://www.keralatourism.org/where-to-stay/thirunakkara-temple-kottayam/466",
      ),
  Pilgrims(
      image: "assets/pilgrim/pil-vimalagiri.jpg",
      title: "Vimalagiri Church",
      subtitle: "One of the tallest church towers in Kerala",
      description:
          "Vimalagiri Church in Kottayam, built in the Gothic architectural style has a 172 ft. tower which is one of the tallest church towers in Kerala. The feast is celebrated in December.",
      lat: 9.596243,
      long: 76.537067,
      stay:
          "https://www.keralatourism.org/where-to-stay/vimalagiri-church-kottayam/482",
      reach: "Nearest railway station: Kottayam, about 600 m\n\nNearest airport: Cochin International Airport, about 64 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-juma.jpg",
      title: "Juma Masjid Thazhathangadi",
      subtitle: "An architectural marvel, believed to be 1000 years old",
      description:
          "An old ancient mosque situated on the banks of the Meenachil River in Kottayam,Juma Masjid at Thazhathangadi is an architectural marvel. Believed to be 1000 years old, it is considered one of the oldest mosques in India. A square inner-courtyard, an exquisitely carved wooden gabled roof, a traditional bathing area and lovely latticed windows resembling a temple or a king's palace make it a delight to behold. Only men are allowed entry to this historic site.\n\nMosque timings: 07:00 - 18:00 hrs.",
      lat: 9.594233,
      long: 76.501787,
      stay:
          "https://www.keralatourism.org/where-to-stay/juma-masjid-thazhathangadi/465",
      reach: "Nearest railway station: Kottayam, via Kottayam - Kumarakom Road, about 4 km\n\nNearest airport: Cochin International Airport, via National Highway 47, 90 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-ettumanoor.jpg",
      title: "Ettumanoor Mahadeva Temple",
      subtitle: "Renowned for the annual Ezharaponnana Ezhunallathu (procession)",
      description: "Ettumanoor Mahadeva Temple, located in Kottayam district, is famous for its murals. The most famous of these beingthe painting of Nataraja (depiction of Lord Shiva as the cosmic dancer) in the gopuram (ornate temple tower). The temple is also renowned for the annual Ezharaponnana  (the seven-and-a-half elephants finished in gold) Ezhunallathu (procession)",
      lat: 9.676907,
      long: 76.559572,
      stay: "https://www.keralatourism.org/where-to-stay/ettumanoor-mahadeva-temple/469",
      reach: "Nearest railway station: Ettumanoor Railway station, about 2 km and Kottayam (Main Station), about 11 km\n\nNearest airport: Cochin International Airport, about 77 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-athirampuzha.jpg",
      title: "St. Mary's Forane Church, Athirampuzha",
      subtitle: "This 9th century Church was built on land donated by the Brahmin family of Ettanasseri",
      description: "The 9th century St. Mary's Church was built on land donated by the Brahmin family of Ettanasseri as thanksgiving for a male heir born to the family on praying to Virgin Mary. Leonard D'Cruz, a Portuguese sailor, brought the statue of St. Sebastian in 1687. The crucifix in this church is unique as it shows St. Sebastian without any wound.\n\nThe annual feast celebrated in honour of St. Sebastian is a big event with fireworks and illuminations. Votive offerings of gold and silver arrows set this event apart from other festivals. The church is located about 10 km from Kottayam town.\n\nChurch Timings: 0930 - 1300 hrs and 1530 - 1800 hrs\n\nPhone: +91 481 2730 742",
      lat: 9.668108,
      long: 76.538286,
      stay: "https://www.keralatourism.org/where-to-stay/st-marys-forane-church-kottayam/478",
      reach: "Nearest railway station: Kottayam, about 8 km away\n\nNearest airport: Cochin International Airport, about 56 km away"),
  Pilgrims(
      image: "assets/pilgrim/pil-thangalppara.jpg",
      title: "Thangalppara",
      subtitle: "A famous Muslim pilgrim centre",
      description: "Thangalppara in Kottayam is the mausoleum of Sheikh Fariduddin found here makes this place a famous Muslim pilgrim centre. Nearby is the scenic hill station of Kurathikallu and the beautiful Kottathavalam.",
      lat: 9.709057,
      long: 76.915054,
      stay: "https://www.keralatourism.org/where-to-stay/thangalppara-kottayam/4",
      reach: "Nearest railway station: Kottayam, about 42 km away"),
  Pilgrims(
      image: "assets/pilgrim/pil-panachikkad.jpg",
      title: "Panachikkad Saraswathi Temple",
      subtitle: "Popularly known as the Mookambika of the South",
      description: "Panachikkad Saraswathi Temple in Kottayam district is considered so powerful a shrine that it is popularly known as the Mookambika of the South. The presiding deity of the temple is Goddess Saraswati (goddess of learning and the arts), and the temple holds an annual Saraswathi pooja in October / November. Children are initiated into the world of letters and knowledge at the Vidhyarambham ceremony held here.",
      lat: 9.53795,
      long: 76.552892,
      stay: "https://www.keralatourism.org/where-to-stay/saraswathi-temple-panachikkad/488",
      reach: "Nearest railway station: Kottayam, about 7 km\n\nNearest airport: Cochin International Airport, about 70 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-manarcad.jpg",
      title: "St. Mary's Church, Manarcad",
      subtitle: "One of the most famous churches of Malankara Jacobite Syrian Christians",
      description: "A mere eight kilometres from Kottayam Town lies one of the most famous churches of Malankara Jacobite Syrian Christians. St. Mary's Church in Manarcad attracts people throughout the year but especially during its famous ettunompu (8-day fasting). People come here in the thousands to seek blessings. These special Lent services date back to the origin of the church itself.",
      lat: 9.599861,
      long: 76.584619,
      stay: "https://www.keralatourism.org/where-to-stay/manarcad-church-kottayam/409",
      reach: "Nearest railway station: Kottayam, about 6 km away\n\nNearest airport: Cochin International Airport, about 65 km away"),
  Pilgrims(
      image: "assets/pilgrim/pil-puthenpalli.jpg",
      title: "Puthenpalli Juma Masjid",
      subtitle: "A famous mosque located at Erattupetta",
      description: "Puthenpalli Juma Masjid is a famous mosque located at Erattupetta in Kottayam district of Kerala. The famous Chandanakudam is celebrated here in February/December",
      lat: 9.684797,
      long: 76.78195,
      stay: "https://www.keralatourism.org/where-to-stay/puthenpalli-kottayam/487",
      reach: "Nearest railway station: Ettumanoor, about 31 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-vaikom.jpg",
      title: "Vaikom Siva Temple",
      subtitle: "A typical example of the Kerala style of temple architecture",
      description: "Vaikom Mahadeva Temple is located around 31 km from Kottayam in Kerala and is closely associated with the legendary Parasurama. This temple is a typical example of the Kerala style of temple architecture. More popular as the Kasi of the South, this temple is famous for its elephant pageants and traditional art performances.\n\nAnnual festival: Vaikathashtami (November/December)",
      lat: 9.751355,
      long: 76.391659,
      stay: "https://www.keralatourism.org/where-to-stay/siva-temple-vaikom/474",
      reach: "Nearest railway station: Kottayam, about 32 km\n\nNearest airport: Cochin International Airport, about 58 km"
      ),
  Pilgrims(
      image: "assets/pilgrim/pil-kuravilangad.jpg",
      title: "St. Mary's Church, Kuravilangad",
      subtitle: "A Marian pilgrim center of the Syro-Malabar Church",
      description: "Major Archiepiscopal Marth Mariam Archdeacon Church, Kuravilangad is a Marian pilgrim center of the Syro-Malabar Church located at Kuravilangad in Kottayam district. This church claims to date to 105 AD. The church has an ancient bell with the engraving on Syriac language 'Mother of God'. Three majestic bells were brought from Germany in 1911 and is one of the largest bells in Asia. The church is also known for its Kappalottam or 'racing ship', a commemoration of the biblical story of Jonah and the whale.",
      lat: 9.757446,
      long: 76.56538,
      stay: "https://www.keralatourism.org/destination/st-marys-church-kuruvilangad/477",
      reach: "Nearest railway station: Kottayam, about 18 km away\n\nNearest airport: Cochin International Airport, about 48 km away"),
  Pilgrims(
      image: "assets/pilgrim/pil-vavarambalam.jpg",
      title: "Vavarambalam, Erumeli",
      subtitle: "A mosque dedicated to Vavar, the companion of the deity - Sree Ayyappa",
      description: "Vavarambalam at Erumeli, a mosque dedicated to Vavar, the companion of the deity - Sree Ayyappa - of the Sabarimala temple at Kottayam. The mosque is unique in that Hindu pilgrims customarily worship here before their trek to Sabarimala. Festival: Erumeli Pettathullal (January).",
      lat: 9.489022,
      long: 76.845131,
      stay: "https://www.keralatourism.org/hotels/the-hotel-elegance/2734",
      reach: "Nearest railway station: Kottayam, about 49 km\n\nNearest airport: Cochin International Airport, about 109 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-perunna.jpg",
      title: "Sree Subramanya Swamy Temple, Perunna",
      subtitle: "A famous shrine known for its festival Pallivetta utsavam",
      description: "Sree Subramania Swamy Temple, located 20 km from Kottayam, is a famous shrine known for its festival Pallivetta utsavam during November - December.",
      lat: 9.437208,
      long: 76.539631,
      stay: "https://www.keralatourism.org/where-to-stay/sree-subramanya-swamy-temple/494",
      reach: "Nearest railway station: Changanassery, about 2 km away\n\nNearest airport: Cochin International Airport, about 111 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-kudamaloor.jpg",
      title: "St. Mary's Church, Kudamaloor",
      subtitle: "800 years old Church built by Chempakasseri Maharajah",
      description: "St. Mary's Church at Kudamaloor in Kottayam, Kerala, is 800 years old and was built by Chempakasseri Maharajah. The ritual offering here is a traditional water bag and rope used to draw water from the well.",
      lat: 9.622243,
      long: 76.513612,
      stay: "https://www.keralatourism.org/where-to-stay/st-marys-church-kudamaloor/479",
      reach: "Nearest railway station: Kottayam, about 4 km away\n\nNearest airport: Cochin International Airport, about 60 km away"),
  Pilgrims(
      image: "assets/pilgrim/pil-kalkulathukavu.jpg",
      title: "Kalkulathukavu Devi Temple",
      subtitle: "Famous for its Mudiyeduppu utsavam (festival) celebrated once in 12 years",
      description: "Kalkulathukavu Devi temple is famous for its Mudiyeduppu utsavam (festival) celebrated once in 12 years and the rare art forms connected with the festival. The procession carrying madhu (honey), kulavazha (plantain tree with the fruit), bhairavi purapadu and darika vadha purappadu etc. is a grand affair here.",
      lat: 9.45774,
      long: 76.524231,
      stay: "https://www.keralatourism.org/where-to-stay/kalkulathukavu-temple-changanassery/496",
      reach: "Nearest railway station: Changanassery, about 5 km\n\nNearest airport: Cochin International Airport, about 113 km"),
  Pilgrims(
      image: "assets/pilgrim/pil-thirunakkara.jpg",
      title: "",
      subtitle: "",
      description: "",
      lat: 0,
      long: 0,
      stay: "",
      reach: ""),


  
];
