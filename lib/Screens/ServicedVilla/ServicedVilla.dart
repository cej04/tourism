class ServicedVilla {
  final String name,
      image,
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

  ServicedVilla({
    required this.name,
    required this.image,
    required this.address,
    required this.ph1,
    this.ph2 = "",
    this.ph3 = "",
    required this.email1,
    this.email2 = "",
    this.website = "",
    required this.overview,
    this.facilities ="",
    required this.latitude ,
    required this.longitude ,
  });
}

List<ServicedVilla> servicedvilla = [
  ServicedVilla(
    name: "",
    image: "",
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
