class HomeStay {
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

  HomeStay({
    required this.name,
    required this.image,
    this.classification ="",
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

List<HomeStay> Homestay = [
  HomeStay(
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
