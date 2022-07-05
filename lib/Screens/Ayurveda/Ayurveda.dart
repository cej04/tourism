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
      latitude,
      longitude;

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
    required this.latitude ,
    required this.longitude ,
  });
}

List<Ayurveda> ayurveda = [
  Ayurveda(
    name: "",
    image: "",
    classification: "",
    address: "",
    ph1: "",
    ph2: "",
    ph3: "",
    email1: "",
    email2: "",
    website: "",
    overview: "",
    facilities: "",
    latitude: "",
    longitude: "",
  ),
];
