class KumaraKom {
  final String name, image, desc, visit, contact, ph, reach, stay,email;

  double latitude, longitude;

  KumaraKom({
    required this.name,
    required this.image,
    required this.desc,
    this.visit = "",
    this.contact = "",
    this.ph = "",
    this.reach = "",
    this.stay = "",
    this.email="",
    required this.latitude,
    required this.longitude,
  });
}

List<KumaraKom> Kumarakom = [
  KumaraKom(
    name: "Canal Cruise",
    image: "assets/place/ku-canalcruise.jpg",
    desc: "Kottayam’s trademark backwater stretches and pristine paddy fields have won over traveller’s hearts for centuries. Its lush landscape is adorned by many a picturesque picnic spot and one need travel no far to find a place to simply sit and relax in the loving embrace of nature. Surrounded by the majestic Western Ghats on the East, the mighty Vembanad Lake and Kuttanad’s rustic paddy fields on the West, Kottayam boasts of many an option for aqua tourists. You will find many quaint rivulets interspersed around the area. A majority of them empty into Vembanad Lake, where boating and fishing are added incentives to the simply stunning visuals on display there. A cruise here will help you come across the rare avian life on display at the legendary Kumarakom Bird Sanctuary with its Siberian Storks, egrets, darters, herons and teals eagerly awaiting you.",
    visit: "",
    contact: "",
    ph: "",
    reach: "",
    stay: "https://www.keralatourism.org/where-to-stay/aquatourism-kottayam/247",
    latitude: 9.432919,
    longitude: 76.543345,
  ),
  KumaraKom(
    name: "Kumarakom Bird Sanctuary",
    image: "assets/place/ku-birdsanctuary.jpg",
    desc: "Kumarakom Bird Sanctuary is among the most popular bird watching spots in the country. Spread out over 14 hectares, one comes across numerous rare avian species in these parts. Located on the banks of the Vembanad Lake in Kottayam, one gets to see a variety of migratory birds that flock in thousands, ranging from places like the Himalayas to Siberia.\n\nPeople who visit in June and August are treated to many rare sights. This is the breeding season of the resident wetland birds such as Indian Darter, Little Cormorant, different species of egrets and herons, White Ibis and several species of kingfishers. People also get to see the waterfowl, cuckoo, owl, water duck, Siberian Cranes, parrots, teal, larks, flycatchers and wood beetles. Boating trips around the sanctuary is extremely relaxing and this is among the most visited places in Kottayam district.",
    visit: "Visiting hours: 06:00 to 18:00 hrs.",
    contact: "Kerala Tourism Development Corporation (KTDC) office",
    ph: "Ph: +91 481 2525864\nFax: +91 481 2525862",
    reach: "Nearest railway station: Kottayam, about 13 km\n\nNearest airport: Cochin International Airport, about 94 km",
    stay: "https://www.keralatourism.org/where-to-stay/kumarakom-bird-sanctuary/525",
    latitude: 9.625122,
    longitude: 76.450882,
  ),
  KumaraKom(
    name: "Village Life Experience",
    image: "assets/place/ku-villagelife.jpg",
    desc: "Kumarakom, awaits with its merry nature to offer the tourists some good time in the laps of its peaceable rural life. A cluster of little islands forms Kumarakom situated in Kottayam district. Spread out on the refreshing waters of the Vembanad Lake Kumarakom is celebrated for its fresh water fish species like the Karimeen (Pearl Spot), Chemmeen (Shrimp) and prawns that own a major part of the delicious native cuisine.",
    visit: "",
    contact: "For reservations and more details\nplease contact your Responsible Tourism Mission Office, Kumarakom.",
    ph: "",
    reach: "",
    stay: "",
    email: "rt@keralatourism.org",
    latitude: 9.432919,
    longitude: 76.543345,
  ),
  KumaraKom(
    name: "Backwater",
    image: "assets/place/ku-backwater.jpg",
    desc: "The village of Kumarakom is a cluster of little islands on the Vembanad Lake, and is part of the Kuttanad region. The bird sanctuary here, which is spread across 14 acres is a favourite haunt of migratory birds and an ornithologist's paradise. Egrets, Darters, Herons, Teals, Waterfowls, Cuckoo, Wild Duck and migratory birds like the Siberian Stork visit here in flocks and fascinate all visitors.\nAn enchanting backwater destination, Kumarakom offers visitors many other leisure options. Boating and fishing facilities are available at the Taj Garden Retreat, a sprawling old bungalow-turned-resort.\nWaterscapes, the backwater resort of the Kerala Tourism Development Corporation has independent cottages built on stilts, set amidst coconut groves offering a panoramic view of the backwaters. Holiday packages involving houseboats and traditional Kettuvalloms (rice barges) offer great experiences.",
    visit: "",
    contact: "",
    ph: "",
    reach: "Nearest railway station: Kottayam, about 13 km\n\nNearest airport: Cochin International Airport, about 94 km",
    stay: "https://www.keralatourism.org/where-to-stay/kumarakom-kottayam/112",
    latitude:9.617119,
    longitude: 76.429482,
  ),
];
