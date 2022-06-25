class Category {
  Map<String, List<Place>> menu;

  Category(this.menu);
  static Category generateCategory() {
    return Category({
      'Kottayam': Place.generateKottayam(),
      'Changanacherry': Place.generateChanganacherry()
    });
  }
}

class Place {
  String name, tariff, ph;
  Place(this.name, this.tariff, this.ph);

  get menu => null;
  static List<Place> generateKottayam() {
    return [
      Place('Zuri Resort & Spa', '8000-11000', '123456'),
      Place('Zuri Resort & Spa', '8000-11000', '123456'),
      Place('Zuri Resort & Spa', '8000-11000', '123456')
    ];
  }

  static List<Place> generateChanganacherry() {
    return [
      Place('Zuri Resort & Spa', '8000-11000', '123456'),
      Place('Zuri Resort & Spa', '8000-11000', '123456')
    ];
  }
}
