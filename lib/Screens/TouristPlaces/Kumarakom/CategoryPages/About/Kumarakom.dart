// import 'package:ktmtourism/Screens/activity_model.dart';

class Kumarakom {
  String imageU, title, Desc, AirDesc, TrainDesc, RoadDesc,subtitle,VisitingHour,contact,reach;

  double lat, long;
  List<String> KumarakomImg;
  List<String> titletext;

  Kumarakom(
      {required this.imageU,
      required this.title,
      required this.Desc,
       this.AirDesc="",
       this.TrainDesc="",
       this.RoadDesc="",
       this.VisitingHour="",
       this.contact="",
       this.reach="",
       required this.titletext,
      required this.lat,
      required this.long,
     
      required this.subtitle,
      required this.KumarakomImg});
}

List<Kumarakom> kumarakom = [
  Kumarakom(
      imageU: "assets/images/kumarakom3.jpg",
      title: "Kumarakom ",
      subtitle: "Wonder Land comprising of a number of islands in the backwaters.",
      Desc:
          "Kumarakom gained national and international importance with the visit of the Hon’ble Prime minister A.B. Vajpayee in 2000 December.\n\nKumarakom is a small village 14 km. west of Kottayam. It is a part of Kuttanad, which is a ‘ wonder land ‘, lying below sea level, comprising of a number of islands, in the back waters. Kumarakom Village covers an area of 5166 Ha of which 2413 Ha is lake portion, 1500 Ha is paddy fields and the remaining portion of 1253 Ha is dry land. Kumarakom is an unbelievably beautiful paradise of mangrove forests, emerald green paddy fields and coconut groves interspersed with enchanting waterways and canals adorned with white lilies. Situated on the Vembanad Lake, this small water world has plenty of traditional country boats, crafts and canoes which will take you in to the heart of scenic Kerala. The resorts near by offer comfortable accommodation and exclusive leisure options like Ayurvedic massages, Yoga and meditation besides boating, fishing, angling and swimming.\n\nIn the last Century, Henry Baker, an English man, attracted by the beauty of the place, selected Kumarakom as his residence and built a bungalow, obtaining 104 acres of land from the then Maharaja of Travancore. He also made a beautiful garden. Preserving the old style, the beautiful bungalow of Baker has now been modified into the Taj Garden Retreat, a hotel with modern living facilities. The Kerala State Tourism Development Corporation is converting this place into a Tourist Complex. K.T.D.C. has constructed A.C. Cottages here and it runs a floating restaurant. The Corporation also provides boating facilities.",
      AirDesc:
          "Nearest airports are :\n\n Cochin International Airport,\n\n Ernakulam District (74.3 Km)& Trivandrum International Airport,\n\n Thiruvananthapuram District (163.8 Km)",
      TrainDesc:
          "Railway Station Kottayam (16 Km) \n\n(Enquiry : 0481-2563535, 2567360, 2567491)",
      RoadDesc: "KSRTC, Kottayam (15 Km)\n\n (Enquiry:0481 2562908)",
      KumarakomImg: [
        "assets/images/kumarakom.jpg",
        "assets/images/kumarakom1.jpg",
        "assets/images/kumarakom2.jpg",
        "assets/images/kumarakom3.jpg",
        "assets/images/kumarakom4.jpg"
      ],
      lat: 9.583331,
      long: 76.4333316,
      titletext: []),

        Kumarakom(
      imageU: "assets/place/ku-canalcruise.jpg",
      title: "Canal Cruise ",
      subtitle: "",
      Desc:
          "Kottayam’s trademark backwater stretches and pristine paddy fields have won over traveller’s hearts for centuries. Its lush landscape is adorned by many a picturesque picnic spot and one need travel no far to find a place to simply sit and relax in the loving embrace of nature. Surrounded by the majestic Western Ghats on the East, the mighty Vembanad Lake and Kuttanad’s rustic paddy fields on the West, Kottayam boasts of many an option for aqua tourists. You will find many quaint rivulets interspersed around the area. A majority of them empty into Vembanad Lake, where boating and fishing are added incentives to the simply stunning visuals on display there. A cruise here will help you come across the rare avian life on display at the legendary Kumarakom Bird Sanctuary with its Siberian Storks, egrets, darters, herons and teals eagerly awaiting you.",
      AirDesc:
          "",
      TrainDesc:
          "",
      RoadDesc: "",
      KumarakomImg: [
       
      ],
      lat: 9.583331,
      long: 76.4333316,
      titletext: []),
];
