class ArtCulture {
  final String image, title, subtitle, description, type, dish;

  ArtCulture(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.type,
      required this.dish});
}

List<ArtCulture> artculture = [
  ArtCulture(
      image: "assets/images/margamkali.jpg",
      title: " Margamkali",
      subtitle: "an ancient Indian round dance of the St.Thomas Christians community",
      description:
          "Margamkali is an art form popular among the Syrian Christian Community of the erstwhile Travancore. Eralier it was usually performed during the wedding ceremony of the Syrian Christians. The theme of the songs revolves round the life of St. Thomas. Margamkali is performed by men and women separately.\n\nMargamkali performances are noted for their rapid movements and rhythmic steps. The dancers wear the traditional costume of the Christian community, consisting of chatta, mundu, kavini, mekka mothiram, and bangles.  The Margam Kali Pattu is usually sung by a single person with the support of a chorus. ",
      type: "January",
      dish: "null"),
  ArtCulture(
      image: "assets/images/koodiyattam.jpg",
      title: "Koodiyattam",
      subtitle: "A traditional performing art form in the state of Kerala",
      description:
          "Koodiyatam is the ancient Sanskrit dramatic version of Kerala It is a temple art and has been recognized and approved by UNESCO. This art is very ancient and is supposed to be about 2000 years old. This programme has been staged in several foreign countries many times.\n\nKoodiyattam is normally played inside the kootambalam of temples and there will be two or more characters always on the stage. The male casts are played by the Chakkiars and the female roles are played by the Nangiars. Vidushaka or the jester plays an important role in the play with a liberty to criticize anyone in the audience.",
      type: "November",
      dish: "null"),
];
