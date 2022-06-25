class Culinary {
  final String image, title, description, type;

  Culinary(
      {required this.image,
      required this.title,
      required this.description,
      required this.type});
}

List<Culinary> culinary = [
  Culinary(
      image: "assets/images/pathirichicken.jpg",
      title: "Pathiri with Chicken curry",
      description:
          "Pathiri is one of the specialities of Kerala Muslim Cuisine.It is usually serverd on special occasions and in Ramadan with meat curry. Usually use home made rice powder to make pathiri.",
      type: "Main Course"),
  Culinary(
      image: "assets/images/appamkarimeen.jpg",
      title: "Appam and Karimeen Mappas",
      description:
          "Ask anybody from Kottayam what their favourite dish is from back home and they will swear by appam and Karimeen Mappas! I think it’s justified for them to do so because appam is just something that seems to be a revolution in the food world. It is a rice pancake with a soft and thick centre and a crispy, paper thin outside. No matter what you eat it with, appam will increase that dish’s taste value beyond hundred! However, it is usually paired with a southern style Karimeen Mappas. \nFreshwater Pearlspot (Karimeen) is a big delicacy in Kerala. Karimeen is traditionally prepared in a few popular ways in Kerala like Karimeen Mappas, Karimeen Polichathu, Karimeen Paalu Curry and so on. Fresh Karimeen caught from the backwaters of Vembanad and that is the secret behind the taste.",
      type: "Main Course"),
  Culinary(
      image: "assets/images/puttukadala.jpg",
      title: "Puttu and Kadala Curry",
      description:
          "As cute as its name sounds, puttu is a cylindrical steamed rice cake cooked with coconut shavings. This is an extremely popular breakfast item and staple food of Kerala. This Kerala food item is usually served with kadala curry which is essentially black chickpeas but can be eaten in whichever way it tastes good",
      type: "Main Course"),
  Culinary(
      image: "assets/images/kappa.jpg",
      title: "Kappa and Meen Curry",
      description:
          "Cassava or Tapioca is referred to as Kappa in Malayalam. Kappa is boiled to form a smooth texture and then eaten with Meen (Fish) Curry. The spicy red Meen Curry with tamarind and coconut and Kappa is a staple combination in Kerala cuisine.",
      type: "Main Course"),
  Culinary(
      image: "assets/images/sadhya.png",
      title: "Sadhya",
      description:
          "The traditional authentic Kerala meal, Sadhya is served with rice and 12-20 dishes in a fresh plantain leaf. The most popular festival in Kerala Onam is incomplete without this traditional meal. The side dishes are collectively called as ?Kootan? and the traditional rice as ?choru?. Achar(pickle), puli inji (ginger-tamarind paste), pappadam, pazham (banana), kayyavarathathu (banana chips), moru (buttermilk) and parippu (dal and ghee paste) are other dishes served with ?kootan?. Kootan differs in preparation and flavour. If you have never tried having an authentic Kerala sadhya, don’t forget to give it a try next time when you visit the state. The preparations for sadhya is simple and so it is the mostly served meal for weddings and other functions in Kerala.",
      type: "Main Course"),
];
