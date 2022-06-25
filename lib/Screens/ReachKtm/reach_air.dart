class ReachAir {
  final String airport, category, website;
  final int pin, phone;

  ReachAir({
    required this.airport,
    required this.category,
    required this.website,
    required this.pin,
    required this.phone,
  });
}

List<ReachAir> reachair = [
  ReachAir(
      airport:
          "Cochin International Airport – Nearest Airport (Ernakulam District)",
      category: "Airport",
      website: " http://www.cial.aero/",
      pin: 682031,
      phone: 04842610115),
  ReachAir(
      airport:
          "Trivandrum International Airport ( Thiruvananthapuram District)",
      category: "Airports",
      website: " https://www.aai.aero/en/node/2654",
      pin: 695004,
      phone: 04712702600),
];
