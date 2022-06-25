class StateOwned {
  final String image, title, address, email;
  final int phone;

  StateOwned({
    required this.image,
    required this.title,
    required this.address,
    //required this.pin,
    required this.email,
    required this.phone,
  });
}

List<StateOwned> stateowned = [
  StateOwned(
    image: "assets/images/pwderattupetta.jpg",
    title: "P.W.D Rest House, Erattupetta",
    address: "P.W.D Rest House, Erattupetta, Kottayam , Pin: 686121",
    //pin:686121,
    phone: 0482312272262,
    email: "email@not.available",
  ),
  StateOwned(
    image: "assets/images/pwdkanjirapally.jpg",
    title: " P.W.D Rest House, Kanjirappally",
    address: "P.W.D Rest House, Kanjirappally, Kottayam, Pin: 686506",
    // pin:686506,
    phone: 048282872294,
    email: "email@not.available",
  ),
  StateOwned(
    image: "assets/images/pwdpala.jpg",
    title: "P.W.D Rest House, Pala",
    address: "P.W.D Rest House, Pala, Kottayam, Pin: 686575",
    // pin:686575,
    phone: 048222212204,
    email: "email@not.available",
  ),
  StateOwned(
    image: "assets/images/pwdvaikom.jpg",
    title: "PWD Rest House, Vaikom",
    address: "PWD Rest House, Vaikom, Kottayam, Pin: 686041",
    //pin:686041,
    phone: 048292622268,
    email: "email@not.available",
  ),
  StateOwned(
    image: "assets/images/pwdchanganacherry.jpg",
    title: "P.W.D Rest House, Changanacherry",
    address: "P.W.D Rest House, Changanssery, Kottayam, Pin: 686101",
    // pin:686101,
    phone: 04812420365,
    email: "email@not.available",
  ),
  StateOwned(
    image: "assets/images/pwdktm.jpg",
    title: "P.W.D Rest House, Kottayam",
    address: "P.W.D Rest House, Kottayam, Pin: 686001",
    //pin:686001,
    phone: 04812568147,
    email: "buildingsktm@gmail.com",
  ),
  StateOwned(
    image: "assets/images/guesthousektm.jpg",
    title: "Guest House,Kottayam",
    address: "Guest House, Kottayam, Pin: 680012",
    //  pin:680012,
    phone: 04812562219,
    email: "gghkottayam@gmail.com",
  ),
];
