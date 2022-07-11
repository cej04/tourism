class Ayurveda {
  final String name,
      image,
      classification,
      address,
      ph1,
      ph2,
      ph3,
      email1,
      email2,
      website,
      overview,
      facilities,
	    treatment;
     
   double  latitude,longitude;

      
  Ayurveda({
    required this.name,
    required this.image,
    required this.classification,
    required this.address,
    required this.ph1,
    this.ph2 = "",
    this.ph3 = "",
    required this.email1,
    this.email2 = "",
    this.website = "",
    required this.overview,
    required this.facilities,
    this.treatment = "",
    required this.latitude,
    required this.longitude,
  });
}

List<Ayurveda> ayurveda = [
    
  Ayurveda(
    name: "Amba Ayurveda Hospital",
    image: "assets/stay/ac-amba.jpg",
    classification: "Ayur Diamond",
    address: "Near Subramanya Temple, Perunna, Changanassery,\nKottayam, Pin: 686102",
    ph1: "+919061033914",
    ph2: "+914812420354",
    ph3: "+914812424354",
    email1: "info@ambaayurveda.org",
    email2: "", 
    website: "www.ambaayurveda.org",
    overview: "",
    facilities: "24-hour Room Service, A/c Room, Cable / Satellite TV, Car parking and valet services, Color TV, Credit Card Accepted, Doctor-on-call, High speed Wi-fi access, Internet facility, Non A/c Room, Photocopying, Restaurant, South Indian Dishes, Travel desk",
    treatment: "Abhyangam, Choorna Swedam (Podikizhi), Dhanyamla dhara, Dhara, Greevavasthi, Kashaya Dhara, Kashayavasthy, Kativasthi, Kizhi, Ksheeradhara, Lepanam, Medicated steam bath, Mukhalepam, Nasyam, Netraprakshalanam, Netratharpanam, Njavarakizhi, Pathrapotali Swedam, Pichu, Pizhichil, Raktamoksham, Sarvanga Dhara, Sirodhara, Sirolepa, Sirovasthi, Snehapanam, Snehavasthy, Swedana, Thakradhara, Thalam, Tharpanam, Udvarthanam, Upanaham, Urovasthi, Vasthi, Virechanam, Yoniprakshalanam",
    latitude: 9.432919,
    longitude: 76.543345,
  ),

    Ayurveda(
    name: "Santhimandiram Ayurvedic Hospital",
    image: "assets/stay/ac-santhimandiram.jpg",
    classification: " Ayur Silver",
    address: "Mandiram Junction, Manganam P. O.,\nKottayam, Pin: 686018",
    ph1: "+919048455552",
    ph2: "+919961710744",
    ph3: "+914813203592",
    email1: "info@santhimandiram.in",
    email2: "santhimandiram@gmail.com",
    website: "www.santhimandiram.in",
    overview: "Santhimandiram Ayurveda Hospital is a Gov: of Kerala approved ayurveda hospital in Kerala with Green Leaf Certification. It represents a happy blend of tradition and modernity. Located in luscious sylvan surroundings and splendid ambience and housed in a posh, neat clean and spacious building, it provides excellent treatment with quality medicines prepared on scientific basis without in any way diluting or compromising the basic tenets and traditions of the ancient system. Our services cover the entire spectrum of healing process and have won the approval and appreciation of the discerning public of Kottayam within an incredibly short time.",
    facilities: "A/c Room, Cable / Satellite TV, Color TV, Doctor-on-call, Laundry, Non A/c Room, Restaurant, Yoga Centre",
    treatment: "",
    latitude: 9.567485,
    longitude: 76.563975,
  ),
    Ayurveda(
    name: "Abad Whispering Palms",
    image: "assets/stay/ac-abad.jpg",
    classification: "Green Leaf",
    address: "Nazareth Church Road, Konchumada, Kumarakom,\nKottayam Pin: 686563",
    ph1: "+919895702993",
    ph2: "+914812523819",
    ph3: "+914812523824",
    email1: "ayurveda@abadhotels.com",
    email2: "whisperingpalms@abadhotels.com",
    website: "https://www.abadhotels.com/",
    overview: "Revival Ayurveda is a Green Leaf certified wellness centre of ABAD Hotels and Resorts. We offer holistic healing powers of traditional Ayurveda with the expert guidance of faculties from Dhanwanthari Vaidyasala, the pioneers in Ayurveda since 1933. The internal and external medicines used in the treatments are GMP and ISO certified.",
    facilities: "24-hour Room Service, A/c Room, Ayurveda Center, Banquet hall, Boating facilities, Cable / Satellite TV, Car parking and valet services, Children's Play Area, Coffee Maker, Color TV, Conference hall, Conference hall, Credit Card Accepted, Cultural Programs, Currency exchange, Doctor-on-call, Food, Gift Shop, Group Check-in, Hairdryer, Handicap Facilities, Homely Kerala Food, Indoor games, Internet facility, Laundry, Medical Tourism, MICE (Meetings, Incentives, Conferences & Events), North Indian Dishes, Online reservation, Photocopying, Restaurant, Safe Deposit Lockers, Shopping Arcade/ Boutiques, South Indian Dishes, Souvenir Shop, Spa, Swimming Pool, Tour Packages, Transport and Guide Services, Travel desk, Video-conferencing facilities & Web casting facilities, Weddings in Kerala, Wi-fi Lobby, Work Desk with Lamp, Yoga Centre",
    treatment: "Abhyangam, Anjanam, Choorna Swedam (Podikizhi), Dhanyamla dhara, Dhara, Greevavasthi, Karna Dhoomanam , Karnapooranam, Kashaya Dhara, Kashayavasthy, Kativasthi, Kizhi, Ksheeradhara, Ksheeradhoomam, Lepanam, Medicated steam bath, Mukhalepam, Nasyam, Netraprakshalanam, Netratharpanam, Njavarakizhi, Oordhwanga Dhara, Pathrapotali Swedam, Pichu, Pizhichil, Sarvanga Dhara, Sirodhara, Sirolepa, Sirovasthi, Snehapanam, Snehavasthy, Swedana, Thakradhara, Thalam, Thalapodichil, Tharpanam, Udvarthanam, Upanaham, Urovasthi, Vasthi, Virechanam, Yoniprakshalanam",
    latitude: 9.576472,
    longitude: 76.422233,
  ),
    Ayurveda(
    name: "Vedasparsh Ayurveda Center",
    image: "assets/stay/ac-vedasparsh.jpg",
    classification: "Green Leaf",
    address: "Backwater Ripples Pvt. Ltd., Nazerath Church Road Kumarakom,\nKottayam, Pin: 686563",
    ph1: "+914812565404",
    ph2: "+914812563404",
    ph3: "+914812523600",
    email1: "mail@backwaterripples.com",
    email2: "sales@backwaterripples.com",
    website: "http://www.backwaterripples.com/vedasparsh-ayurveda-center/",
    overview: "Vedasparsh, the Green Leaf certified Ayurvedic healing centre at Backwater Ripples is managed by a well qualified and highly experienced doctor, assisted by a team of skilled therapists. Vedasparsh offers several result-oriented therapies designed to unwind, tone up and rejuvenate within a realistic timeframe. These packages run from one to four weeks. It includes stay in AC superior cottages, detailed consultation by an ayurvedic physician, external therapies, internal medication and special ayurvedic diet. Along with these we arrange yoga and meditation sessions.",
    facilities: "Ayurveda Center, Doctor-on-call, Restaurant, Travel desk",
    treatment: "Abhyangam, Choorna Swedam (Podikizhi), Kativasthi, Kizhi, Medicated steam bath, Nasyam, Njavarakizhi, Pathrapotali Swedam, Pizhichil, Sirodhara, Udvarthanam",
    latitude: 9.588811,
    longitude: 76.424310,
  ),
  Ayurveda(
    name: "Soma Kerala Palace",
    image: "assets/stay/ac-soma.jpg",
    classification: "Green Leaf",
    address: "Chempu P.O. Kochi – Kumarakom Road, Vaikom,\nKottayam, Pin: 686615",
    ph1: "+914829271350",
    ph2: "",
    ph3: "",
    email1: "mail@soma.in",
    email2: "",
    website: "www.somakeralapalace.com",
    overview: "",
    facilities: "24-hour Room Service, A/c Room, Ayurveda Center, Boating facilities, Cable / Satellite TV, Children's Play Area, Coffee Maker, Color TV, Conference hall, Credit Card Accepted, Currency exchange, Doctor-on-call, Flight status, Food, Gift Shop, Group Check-in, Hairdryer, Handicap Facilities, High speed Wi-fi access, In Room Safe, Internet facility, Laptop computers on hire, Laundry, Lounge Bar, Meet-and-Greet Services, MICE (Meetings, Incentives, Conferences & Events), Non A/c Room, Online reservation, Photocopying, Private party area, Restaurant, Safe Deposit Lockers, Scanning services, Swimming Pool, Tour Packages, Transport and Guide Services, Travel desk, Weddings in Kerala, Wi-fi Lobby, Work Desk with Lamp, Yoga Centre",
    treatment: "",
    latitude: 9.8212424,
    longitude: 76.3813322,
  ),


  Ayurveda(
    name: "Ayurkshethra",
    image: "assets/stay/ac-ayurkshethra.jpg",
    classification: "Green Leaf",
    address: "Ammankari Road, Kumarakom,\nKottayam, Pin: 686563",
    ph1: "+918075378189",
    ph2: "+919446004811",
    ph3: " +914812526300",
    email1: "crs@eastend.in",
    email2: "accounts@eastend.in",
    website: "https://eastend.in/lakesong/",
    overview: "Ayurveda is the Indian system of medicine, which originated in India over 5,000 years ago. It literally means knowledge of life. It helps to rediscover health, quality, and elegance of human life. Following this holistic stream, Lakesong Ayurkshethra the Temple of Life brings forth the true concept of Ayurveda and Yoga, to help your tired body to recover and invigorate with traditional rejuvenation procedures. Lakesong Ayurkshethra is housed in an elaborate traditional model structure with decorative handcrafted wooden carvings that will take you back in time and heritage.",
    facilities: "",
    treatment: "",
    latitude: 9.594297,
    longitude: 76.425949,
  ),
  Ayurveda(
    name: "Coconut Lagoon Ayurvedic Centre",
    image: "assets/stay/ac-coconut.jpg",
    classification: "Green Leaf",
    address: "Kumarakom,\nKottayam, Pin: 686563",
    ph1: "+919061009164",
    ph2: "+914812525834",
    ph3: "+914812523572",
    email1: "coconutlagoon@cghearth.com",
    email2: "contact@cghearth.com",
    website: "www.cghearth.com/coconut-lagoon",
    overview: "Coconut Lagoon is located upon the Vembanad lake, one of India’s largest inland lakes with its own distinctive ecology that supports a plethora of natural life. There’s only one way to get to Coconut Lagoon: over the water. From our private jetty about a kilometer upstream, the boat ride over the lake’s gentle swells, past lazy coconut palms and houses, to the resort sets the tone of your holiday to exciting and novel, yet relaxed and nurturing.\nOur Ayurveda center offers a range of herbal massages and therapies to help you get rid of accumulated stress and shape up a bit while you are with us. Be good to yourself.",
    facilities: "Ayurveda Center, Restaurant, Swimming Pool",
    treatment: "",
    latitude: 9.633132,
    longitude: 76.418628,
  ),

   Ayurveda(
    name: "Maya Spa",
    image: "assets/stay/ac-maya.jpg",
    classification: "Green Leaf",
    address: "The Zuri Kumarakom Kerala Resort and Spa,\nV 235 A1 to A54 Karottukayal Kumarakom,\nKottayam, Pin: 686563",
    ph1: "+919946105520",
    ph2: "+914812527272",
    ph3: "+914812527207",
    email1: "mayaspa.kumarakom@thezurihotels.com",
    email2: "reservations.kumarakom@thezurihotels.com",
    website: "https://www.thezurihotels.com/lake-resorts-in-kumarakom/",
    overview: "The Zuri Kumarakom, Kerala Resort & Spa is a 5 star deluxe spa resort in Kumarakom, located on the serene banks of Vembanad lake and offers a luxurious and tranquil setting for the discerning traveler. Standing directly beside the lake, the Zuri Kumarakom, offers spacious living–dining rooms, traditional Indian–style bedrooms and individual gardens with private plunge pools. Our Maya Spa is one of the largest in South India and offers ayurveda, Western and Oriental therapies to relax and rejuvenate the mind, body & soul.",
    facilities: "24-hour Room Service, A/c Room, Ayurveda Center, Baby-sitting, Banquet hall, Bar, Beauty saloon, Boardroom, Boating facilities, Cable / Satellite TV, Car hire service, Car parking and valet services, Chinese dishes, Coffee Maker, Coffee shop, Color TV, Conference hall, Conference hall, Credit Card Accepted, Cultural Programs, Currency exchange, Doctor-on-call, DVD Player, Facsimile, Fitness Center, Food, Gift Shop, Group Check-in, Hairdryer, Handicap Facilities, High speed Wi-fi access, Homely Kerala Food, In Room Safe, Indoor games, Internet facility, Iron / Ironing Board, Laundry, Library, Medical Tourism, MICE (Meetings, Incentives, Conferences & Events), Mini Bar, North Indian Dishes, Photocopying, Private party area, Refrigerator, Restaurant, Safe Deposit Lockers, Scanning services, South Indian Dishes, Spa, Swimming Pool, Transport and Guide Services, Travel desk, Wi-fi Lobby, Work Desk with Lamp",
    treatment: "Abhyangam, Choorna Swedam (Podikizhi), Kativasthi, Kizhi, Nasyam, Njavarakizhi, Pathrapotali Swedam, Pizhichil, Sirodhara, Thalapodichil, Udvarthanam",
    latitude: 9.591385,
    longitude: 76.425307,
  ),

  Ayurveda(
    name: "Mannalil Ayurveda Hospital",
    image: "assets/stay/ac-mannalil.jpg",
    classification: "Olive Leaf",
    address: "Madappadu, Punnathara (W) P. O., Ettumanoor,\nKottayam, Pin: 686631",
    ph1: "+919446530909",
    ph2: "+914812530909",
    ph3: "",
    email1: "mannalilvaidyasala@gmail.com",
    email2: "info@mannalilayurvedahospital.com",
    website: "www.mannalilayurvedahospital.com",
    overview: "Mannalil Ayurveda Hospital located at Ettumanoor, Kottayam is founded with a superior motive that aims at upholding the glory of this tradition and keeping you hale and hearty. Our expert doctors entrusted in maintaining the ayurvedic treatments following the ancient Sanskrit scripts on ayurveda dated back to thousands of years, provide you with the best experience in ayurvedic treatments. Our ayurvedic research centers strive our best to provide you the best ayurvedic experience that will soothen your mind, body and soul. Mannalil Ayurveda walking in the paths of ayurveda, serving humanity for more than 400 years welcomes you to a whole new experience in ayurvedic treatments.",
    facilities: "A/c Room, Ayurveda Center, Cable / Satellite TV, Car parking and valet services, Color TV, Doctor-on-call, Food, Handicap Facilities, Homely Kerala Food, Internet facility, Iron / Ironing Board, Laundry, Medical Tourism, Non A/c Room, Photocopying, Translation / interpretation services (on request), Wi-fi Lobby",
    treatment: "Abhyangam, Anjanam, Choorna Swedam (Podikizhi), Dhanyamla dhara, Dhara, Greevavasthi, Karnapooranam, Kashaya Dhara, Kashayavasthy, Kativasthi, Kizhi, Ksheeradhara, Ksheeradhoomam, Lekhaneeyam, Lepanam, Medicated steam bath, Mukhalepam, Nasyam, Netraprakshalanam, Netratharpanam, Njavarakizhi, Oordhwanga Dhara, Pathrapotali Swedam, Pichu, Pizhichil, Raktamoksham, Sarvanga Dhara, Sirodhara, Sirolepa, Sirovasthi, Snehapanam, Snehavasthy, Swedana, Thakradhara, Thalam, Tharpanam, Udvarthanam, Upanaham, Urovasthi, Vasthi, Virechanam, Yoniprakshalanam",
    latitude: 9.657283,
    longitude: 76.576815,
  ),
];