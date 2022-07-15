class HillStation {
  final String name, image, desc, reach, stay;

  double latitude, longitude;

  HillStation({
    required this.name,
    required this.image,
    this.desc = "",
    this.reach = "",
    this.stay = "",
    required this.latitude,
    required this.longitude,
  });
}

List<HillStation> hillstation = [
  HillStation(
    name: "Illickal Kallu",
    image: "assets/place/hs-illickal.jpg",
    desc:
        "One of the most popular tourist destinations in Kottayam district is Illickal Kallu, situated on a majestic hill called Illickal Mala. There are numerous mountain streams in Illickal Mala, which is 6,000 ft above sea level, and they flow down to form the serene Meenachil River. Each of the three hills has a peculiar shape. One of them resembles a mushroom and hence, its name ‘Kuda Kallu’ (umbrella-shaped rock). The second hill has a small hunch on the side and is therefore called as ‘Koonu Kallu’ (hunchback rock). The third one is called Illickal Kallu as it derives its name from the mountain itself. The steep rock on the top of the hill has a part of its peak shorn off.\n\nThe nearest town is Nellappara (8km) and the nearest major town is Erattupetta (19km). The journey up the hill is in itself an eventful one. After a thrilling drive negotiating hairpin curves and a hike uphill, there is a path that takes you to Illickal Kallu. You may tread this path or just stay put and feel the might of this imposing muscular rock. \n\nThe breathtaking aerial view of the surroundings and billows of mists that glide past shrouding the towering hill is sure to overwhelm you. The weather is cool and misty here. If the sky is clear, the Arabian Sea can be seen in the distant horizon as a thin blue line. Sunsets on full moon days are special here. The moon can be seen rising like another sun as the orange sun goes down.",
    reach:
        "Nearest railway station: Kottayam, about 55 km \n\nNearest airport: Cochin International Airport, about 85 km ",
    latitude: 0,
    longitude: 0,
    stay: "",
  ),
  HillStation(
    name: "Ilaveezhapoonchira",
    image: "assets/place/hs-elaveezha.jpg",
    desc:
        "Known as the land of letters, latex and lakes, Kottayam is among the most prominent districts in Kerala. Here lies the beautiful valley of Ilaveezhapoonchira, one amongst the many prime picnicking spots in the area. The beautiful hillocks near Kanjar are known to have great trails for trekking. The view in itself is breath-taking. During the Monsoons, the entire place transforms into a surreal spectacle. The terrain changes and one observes Nature at her best. It is highly recommended to view both sunrise and sunset from the valley as the picturesque landscape opens up in a unique and exhilarating way at those specific times.",
    reach:
        "Nearest railway station: Kottayam, about 55 km\n\nNearest airport: Cochin International Airport, about 76 km",
    latitude: 9.806504,
    longitude: 76.787167,
    stay: "https://www.keralatourism.org/hotels/alanta-residency/2227",
  ),
  HillStation(
    name: "Kottathavalam",
    image: "assets/place/hs-kottathavalam.jpg",
    desc:
        "One of the most loved picnic spots in Kottayam, Kottathavalam is a place of archaeological interest at the legends says that the Royal Family of Madurai would ascend a rock cut path to take rest in this ancient cave.\n\nA magnificent cave which can be reached by the rock cut steps near the Muruganmala is perfectly interspersed with a naturally green cover that spreads out in all directions. Inside it, people can look at chair shaped carvings, along with depictions of famous legends including Madurai Meenakshi, Ayyappa, Murugan and Kannaki.\n\nThis elevated path is every picnicker’s dream; quaint, secluded and peaceful, with the very birds and animals around you acting as joyful compatriots.",
    reach:
        "Nearest railway station: Kottayam, about 64 km\n\nNearest airport: Trivandrum International Airport, about 98 km",
    latitude: 9.68063,
    longitude: 76.890335,
    stay: "https://www.keralatourism.org/where-to-stay/kottathavalam-kurisumala-kottayam/530",
  ),
  HillStation(
    name: "Kannadipara ",
    image: "assets/place/hs-kannadipara.jpg",
    desc:
        "A valley of rocky mountains that reflects the rays of the sun like a perfect mirror; this is the special distinction that led to Kannadipara (Rock Mirror) getting its name. The highest point in theIlaveezhapoonchira Range, it is among the finest attractions in Kottayam district. Ilaveezhapoonchira on its own encompasses Mankunnu, Kudayathoor Vindhyan, and Thonippara Hills. This elevated location gives one a view of a plethora of districts, including Kottayam, Idukki, Ernakulam, Alappuzha, Pathanamthitta and Thrissur. Nearby lies Kazhukankulimali Waterfalls, where joyful cascades gush down the mountain and greet the river below with a huge splash.",
    reach:
        "Nearest railway station: Kottayam, about 66 km\n\nNearest airport: Cochin International Airport, about 69 km",
    latitude: 9.820543,
    longitude: 76.814318,
    stay: "https://www.keralatourism.org/destination/kannadipara-hills-kottayam/255",
  ),
  HillStation(
    name: "Vagamon ",
    image: "assets/place/hs-vagamon.jpg",
    desc:
        "Vagamon hill station in Idukki is among the few spots on the planet that need to be experienced first-hand to truly discover its glory. The grassy hills, velvet lawns and overall mysticism of the place cannot be replicated anywhere else in the world. This quaint town lies untouched by any modern influences and is neatly tucked away in Idukki district. Visitors can avail many activities including trekking, paragliding, mountaineering and rock climbing. People love travelling across a chain of three famous hills: Thangal, Murugan and Kurisumala. These are important to Hindus, Muslims and Christians, respectively, and are a perfect example of the communal harmony prevalent in the place. The Kurisumala monks have an enchanting dairy farm nearby that is an absolute delight to visit.",
    reach:
        "Nearest railway station: Kottayam, about 75 km from Peermede\n\nNearest airport:  Cochin International Airport, about 150 km from Peermede",
    latitude: 9.690952,
    longitude: 76.904783,
    stay: "https://www.keralatourism.org/where-to-stay/vagamon-idukki/324",
  ),
  
];
