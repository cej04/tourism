// import 'dart:ffi';

class StateOwned {
  final String image, title, address, email, phone, bookingurl;
  final double latitude, longitude;

  StateOwned({
    required this.image,
    required this.title,
    required this.address,
    //required this.pin,
    required this.email,
    required this.phone,
    required this.bookingurl,
    required this.latitude,
    required this.longitude,
  });
}

List<StateOwned> stateowned = [
  StateOwned(
    image: "assets/images/pwderattupetta.jpg",
    title: "PWD Rest House, Erattupetta",
    address: "Aruvithura P.O., Erattupetta, Kottayam Dist. PIN 686122",
    //pin:686121,
    phone: "+917594970489",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.68650,
    longitude: 76.77612,
  ),
  StateOwned(
    image: "assets/images/pwderumely.jpg",
    title: "PWD Rest House, Erumely",
    address: "Erumely P.O, PIN 686509",
    //pin:686121,
    phone: "+917594970488",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.48287,
    longitude: 76.84430,
  ),
  StateOwned(
    image: "assets/images/pwdmundakayam.jpg",
    title: "PWD Rest House, Mundakkayam ",
    address: "Mundakkayam P.O - 686513",
    //pin:686121,
    phone: "+917594970487",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.53764,
    longitude: 76.88631,
  ),
  StateOwned(
    image: "assets/images/pwdkanjirapally.jpg",
    title: " PWD Rest House, Kanjirappally",
    address: "Kunnumbhagom P.O, Kanjirappally PIN 686507",
    // pin:686506,
    phone: "+917594970486",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.55620,
    longitude: 76.78120,
  ),
  StateOwned(
    image: "assets/images/pwdpala.jpg",
    title: "PWD Rest House, Pala",
    address: "Pala P.O, Kottayam (Dt), PIN 686575",
    // pin:686575,
    phone: "+917594970485",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.71490,
    longitude: 76.68488,
  ),

  StateOwned(
    image: "assets/images/pwdvaikom.jpg",
    title: "PWD Rest House, Vaikom",
    address: "Vaikom, Kottayam Dist., Pin: 686141",
    //pin:686041,
    phone: "+917594970484",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.74886,
    longitude: 76.39003,
  ),
  StateOwned(
    image: "assets/images/pwdkaduthuruthy.jpg",
    title: "PWD Rest House, Kaduthuruthy",
    address: "Near Block Panchayat Office, Appanchira, Kaduthuruthy, PIN 686604",
    //pin:686041,
    phone: "+917594970483",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.77124,
    longitude: 76.48857,
  ),
  StateOwned(
    image: "assets/images/pwdchanganacherry.jpg",
    title: "PWD Rest House, Changanacherry",
    address: "Changanssery, Kottayam Dist., Pin: 686101",
    // pin:686101,
    phone: "+917594970481",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.44348,
    longitude: 76.53959,
  ),
  StateOwned(
    image: "assets/images/pwdktm.jpg",
    title: "PWD Rest House, Kottayam",
    address: "Kottayam, Pin: 686001",
    //pin:686001,
    phone: "+917594970068",
    bookingurl: "https://resthouse.pwd.kerala.gov.in/index",
    email: "buildingsktm@gmail.com",
    latitude: 9.58207,
    longitude: 76.52298,
  ),
  StateOwned(
    image: "assets/images/guesthousektm.jpg",
    title: "Government Guest House,Kottayam",
    address: "Guest House, Kottayam, Pin: 680012",
    //  pin:680012,
    phone: "+914812562219",
    bookingurl: "https://gad.kerala.gov.in/index.php/online-guest-house-booking-0",
    email: "gghkottayam@gmail.com",
    latitude: 9.57249,
    longitude: 76.53264,
  ),
];