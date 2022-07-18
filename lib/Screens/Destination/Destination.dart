class Destination {
  final String name, subname, image, desc, reach, stay;
  double latitude, longitude;

  Destination({
    required this.name,
    required this.subname,
    required this.image,
    this.desc = "",
    this.reach = "",
    this.stay = "",
    required this.latitude,
    required this.longitude,
  });
}

List<Destination> destination = [
  Destination(
      name: "Aqua Tourism",
      subname: "A place to simply sit and relax in the loving embrace of nature",
      image: "assets/place/des-aquatourism.jpg",
      desc:
          "Kottayam’s trademark backwater stretches and pristine paddy fields have won over traveller’s hearts for centuries. Its lush landscape is adorned by many a picturesque picnic spot and one need travel no far to find a place to simply sit and relax in the loving embrace of nature. Surrounded by the majestic Western Ghats on the East, the mighty Vembanad Lake and Kuttanad’s rustic paddy fields on the West, Kottayam boasts of many an option for aqua tourists. You will find many quaint rivulets interspersed around the area. A majority of them empty into Vembanad Lake, where boating and fishing are added incentives to the simply stunning visuals on display there. A cruise here will help you come across the rare avian life on display at the legendary Kumarakom Bird Sanctuary with its Siberian Storks, egrets, darters, herons and teals eagerly awaiting you.\n\nCanal Cruise Packages offered by DTPC Kottayam\n\nExplore Kuttanad Cruise:- \nA circuit with its enchanting visuals and dramatic backdrops is sure to leave you in awe. The tour begins from Kodimatha Boat Jetty.\n\nMunroe Light House:- \nA unique structure still stands intact facing the tranquil backwaters in the midst of a vast expanse of verdant paddy fields and coconut palms.\n\nKuttanad Paddy Fields:- \nA cruise along  Q, S, T and R Blocks canal is an enchanting experience.\n\nChavara Bhavan:- \nA cruise to the holy place of blessed Saint Kurikose Elias Chavara where devotees congregate for prayer and is accessible only by boat.\n\nVembanad Lake:- \nThe backwater tourism in Vembanad Lake offers boating, fishing and sightseeing experiences to travellers.",
      reach: "",
      latitude: 9.615927,
      longitude: 76.435186,
      stay:
          "https://www.keralatourism.org/where-to-stay/aquatourism-kottayam/247"),
  Destination(
      name: "Malarickal Village Tourism",
      subname: "The water lilies greet the terrain during the end of the monsoon rains",
      image: "assets/place/des-malarickal.jpg",
      desc:
          "Nestled far away from the chaos of urban life, there exists a quaint hamlet in the heart of Kottayam district. All it offers those who stumble upon it are a soothing experience of village life amidst endless paddy fields. Its massive stretches of backwaters and intrinsic natural beauty are slowly attracting tourists who seek a rendezvous wholly detached from their routine. Malarickal or Malarikkal is a jewel that people in Kerala are only slowly awakening to themselves.\n\nIt isn’t just the emerald of its backwaters that awaits you here, as Malarickal lures you in with breathtaking shades of pink as well. The water lilies (Nymphaea Stellata or ambal in local parlance) greet the terrain during the end of the monsoon rains, which usually occurs annually between September and October. A carpet of pleasant pink envelops the entire region in a breathtaking formation that is hard to explain with mere words. They spread out over 600 acres of land, and locals advise that the best time to witness this phenomenon is morning and evening. These visuals alone draw in bigger crowds each year, as words spread of this natural wonder.\n\nTo begin the day with the water lilies, and end it with a glorious sun setting over the countryside is nothing short of a divine endowment. The District Tourism Promotion Council (DTPC), Kottayam, will soon add village tourism options like boating and responsible tourism activities.  These will undoubtedly further enhance the visitor experience at Malarickal.",
      reach:
          "Nearest railway station: Kottayam, around 9 km\n\nNearest airport: Cochin Interanational Airport, around 85 km",
      latitude: 9.561735,
      longitude: 76.490511,
      stay:
          "https://www.keralatourism.org/where-to-stay/malarickal-village-tourism/669"),
  Destination(
    name: "Vembanad Lake",
    subname: "There are many boating, fishing and sightseeing options available in the area",
    image: "assets/place/des-vembanad.jpg",
    desc:
        "The vast array of rivers and canals that Kottayam is blessed with, empty themselves into the picturesque Vembanad Lake. It is a lovely place to go for a picnic and has also turned into a prominent backwater destination. There are many boating, fishing and sightseeing options available in the area. The Kumarakom Tourist Village has many house boating and holiday packages available. Onam brings new life to these waters with stunning Snake Boat Races. As oarsmen in large numbers dictate the rhythm of the water underneath, one is transported to a new dimension altogether. ",
    reach:
        "Nearest railway station: Kottayam, about 13 km\n\nNearest airport: Cochin International Airport, about 63 km",
    latitude: 9.584755,
    longitude: 76.416557,
    stay:
        "https://www.keralatourism.org/where-to-stay/vembanad-lake-kumarakom/111",
  ),
  Destination(
      name: "Anchuvilakku",
      subname: "A historical and architectural stone lamp post",
      image: "assets/place/des-anchuvilakku.jpg",
      desc:
          "Lying near the picturesque Changanacherry Boat Jetty in Kottayam district is a historical and architectural marvel, the magnificent Anchuvilakku. This stone lamp post personifies the Kerala school of architecture at its finest, and was laid here by the legendary freedom fighter Veluthampi Dalawa himself. The surrounding market is an area renowned for being a commercial hub and is also attributed to him. Today, people come from around the world to view this beautiful lamp post, with its five lamps still lit using kerosene.",
      reach:
          "Nearest railway station: Changanassery, about 2 km; Kottayam, about 21 km\n\nNearest airport: Cochin International Airport, about 111 km",
      latitude: 9.444998,
      longitude: 76.528301,
      stay:
          "https://www.keralatourism.org/where-to-stay/anchuvilakku-changanacherry/404"),
  Destination(
      name: "Mannanam ",
      subname: "Boat rides in the Pennar Canal that leads to the beautiful backwaters",
      image: "assets/place/des-mannanam.jpg",
      desc:
          "Mannanam is an important religious site in Kerala, primarily famous because it is here that the first house of the CMI Congregation had its foundation stone laid on 11 May 1831 by Saint Kuriakose Elias Chavara. The Chavara Art Museum at Mannanam preserves a brilliant repertory of church history.\n\nLocated in Kottayam district, the first Catholic Sanskrit School came up in Mannanam in 1846. It is also known for having the first private printing press (CMS Press by Rev. Benjamin Bailey) and the first daily newspaper in Malayalam, Deepika in 1887. Apart from its historical significance, people also love going on boat rides in the Pennar Canal that leads to the beautiful backwaters of Alappuzha and Ernakulam.\n\nCruise Tours in Mannanam\n\nDistrict Tourism Promotion Council (DTPC), Kottayam provides an enchanting boat journey through the Pennar Canal to the picturesque backwater districts of Alappuzha and Ernakulam. Accommodation for tourists is available at the Mannanam DTPC Tourist Home.",
      reach:
          "Nearest railway station: Kottayam, about 11 km\n\nNearest airport: Cochin International Airport, about 83 km",
      latitude: 9.649577,
      longitude: 76.522679,
      stay:
          "https://www.keralatourism.org/where-to-stay/mannanam-historic-place/115"),
  Destination(
      name: "Alapra",
      subname: "The only place in the district where the legendary ritual art form of Padayani is performed",
      image: "assets/place/des-alapra.jpg",
      desc:
          "Alapra is among the most beautiful villages in Kottayam district. Located near Erumeli, it is home to the mystical Alapra Thacharikkal Bhagavathi Temple. Set amidst a dense forest, it is the only place in the district where the legendary ritual art form of Padayani is performed. Majestic views, luscious waterfalls and ancient caves add to the mystique of the place. ",
      reach:
          "Nearest railway station: Thiruvalla, about 33 km; Changanassery, about 37 km and Kottayam, about 41 km\n\nNearest airport: Cochin International Airport, about 112 km",
      latitude: 9.45719,
      longitude: 76.763134,
      stay:
          "https://www.keralatourism.org/homestays/zarahs-home-stay/4541"),
  
];
