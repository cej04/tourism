import 'package:flutter/material.dart';

class PilgrimViewMore {
  final String title, desc,trailing;

  final Color bgcolor;
  Color iconColor;

  PilgrimViewMore(
      {required this.title,
      required this.desc,
      required this.trailing,
      required this.bgcolor,
      required this.iconColor});
}

List<PilgrimViewMore> pilgrimviewmore = [
  PilgrimViewMore(
    title: "Aruvithira Church",
    trailing: "(11 km from Kottayam)",
    desc:
        "Believed to be one of the seven churches established by St. Thomas, this is also one of the churches in Kerala which collects the largest amount of monetary offerings during the festival days. The annual feast is celebrated from 22nd to 24th of April.",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "Bhagavathy Temple, Ambalakkadavu",
      trailing: " (3 km from Kottayam)",
      desc:
          "The Arattu ritual of the Thirunakkara Mahadevar Temple takes place here. Festival: Vishu (April/May)",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "Bhagavathy Temple, Manarcad",
      trailing: "(8 km from Kottayam)",
      desc:
          "This centuries-old temple is dedicated to Goddess Bhadrakali, Main events: Kalamezhuthupattu, Kumbha bharani, Meena bharani, Patham udayam, Mandalam chirappu.",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title: "Dharmasastha Temple, Pakkil",
    trailing: "(3 km from Kottayam)",
    desc:
        "This is one of the eight temples established by Sage Parasurama,the mythical creator of Kerala.Annual festival: Sankranti Vanibhyam - a fair of household articles(June/July)",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "Kaduthuruthi Vallapalli",
      trailing: " (25 km from Kottayam)",
      desc:
          "(On MC Road between Ettumanoor and Vaikom) Built in 500 AD, the church has a huge cross sculpted out of a single stone at the entrance.",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "Kalkulathukavu Temple, Vazhappalli",
      trailing: "(18 km from Kottayam)",
      desc:
          "This temple is famous for its Mudiyeduppu Utsavam (festival) celebrated once in 12 years and the rare art forms connected with It. The procession carrying madhu (honey) and kulavazha (plantain tree with the fruit), and rituals like bhairavi purapadu, darika vadha purappadu, etc. are grand affairs.",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title: "Kavil Bhagavathy Temple, Changanacherry",
    trailing: "(18 km from Kottayam)",
    desc:
        "Located at Puzhavathu, Kavil Bhagavathy Temple was built by one of the Thekkumkoor Maharajas where the ancestral deity of the Thekkumkoor Royal Family was worshipped. This temple is well known for the festive ceremony of Chandana Kudam one of the most Important ancestral ceremonies here. It has been conducted for many generations now, during the Kavil chirappu (Dec-Jan).",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "Kurisumala",
      trailing: " (3 km from Vazhikkadavu) ",
      desc:
          "At this renowned Christian pilgrim centre, hundreds of devotees from far and near converge during the holy week and after, This is one of the eight temples established to climb the hill in faith, carrying small by Sage Parasurama, the mythical creator wooden crosses.",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "Pallipurathu Kavu Bhagavathy Temple",
      trailing: " (2 km from Kottayam)",
      desc:
          "The temple of Pallipurathu Kavu is dedicated to Goddess Durga, who is referred to as 'Pallippurathamma' by worshipers and is known for the festival Pathamudaya Mahotsavam. It is famous for the Nadel Thiyattu performance. One of the most attractive features of Pallipurathu Kavu is the unique art form of Theeyattu which is practiced as a ritual offering.",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title: "Pazhayapalli, Changanacherry",
    trailing: "(21 km from Kottayam)",
    desc:
        "This 950-year-old mosque is one of the most famous ones of Central Travancore. The annual festival, Thangal Adiyanthiram, is renowned and is marked by a grand community feast. Meat and two tonnes of rice, offered by the devotees, is used to prepare biriyani for the community feast on this day. The Chandanakkudam festival at the mosque is one of the largest crowd pulling events in Changanacherry town.",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "Puthenpalli Juma Masjid, Erattupetta",
      trailing: " (40 km from Kottayam)",
      desc:
          "Puthenpalli Juma Masjid is a famous mosque located at Erattupetta. The famous Chandanakudam is celebrated here in February/December.",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "Shiva Temple, Thalikkotta",
      trailing: "(2 km from Kottayam)",
      desc:
          "This is the place of worship of the erstwhile Thekkumkoor Royal Family, Annual festival: Ten-day utsavam (April-May), Shivarathri (January-February)",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title: "Shiva Temple, Vaikom",
    trailing: " (40 km from Kottayam)",
    desc:
        "Associated with Lord Parasurama, this temple is a typical example of the Kerala style of temple architecture. Renowned as the Kasi of the South, this temple is famous for its elephant pageants and traditional art performances. Annual festival Vakathashtami (November/December)",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "Sree Subramanya Swami Temple, Perunna",
      trailing: "(20 km from Kottayam) ",
      desc:
          "This temple is dedicated to Lord Subramanya who is projected in Ugra Bhava (aggressive disposition). The idol of Lord Muruga in this temple is unique as this is the only Subramanya idol wherein the deity is holding the Vel (spear) pointed downwards. The temple hosts the world famous Thaipooya Kavadiyattam (Kavadi) festival celebrated annually in January February.",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "St. George's Church, Puthupalli",
      trailing: "(10 km from Kottayam)",
      desc:
          "Famed for its golden cross, this church is believed to have been built by the Thekkumkoor Rajas. The feast of St. George (Gee Varghese) is the annual festival at the church. ",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title: "St. Mary's Forane Church, Athirampuzha",
    trailing: "(10 km from Kottayam)",
    desc:
        "The 9th century St. Mary's Church was built on land donated by the Brahmin family of Ettanasserl as thanksgiving for a male heir born to the family on praying to Virgin Mary. Leonard D'Cruz, a Portuguese sailor, brought the statue of St. Sebastian in 1687. The crucifix in this church is unique as it shows Jesus Christ without a single wound. The annual feast celebrated in honour of St. Sebastian is a big event complete with fireworks and illuminations. Votive offerings of gold and silver arrows set this event apart from other festivals. Open 0930-1300 hrs, 1530-1800 hrs",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "St. Mary's Church, Kudamaloor",
      trailing: "(5 km from Kottayam)",
      desc:
          "This 800-year-old church was built by Chempakasseri Maharajah. Devotees offer a traditional water bag and rope to draw water from the well. The Kudamaloor Temple is equally famous.",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "St. Mary's Church, Kuravilangad",
      trailing: "(20 km from Kottayam)",
      desc:
          "Built in 355 AD on the high ranges of Kuravilangad town, this church has an old bell that bears an undeciphered inscription.",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title:
        "St. Mary's Knanaya Church,Vallapalli ",
        trailing: "(2 km to the west of Kottayam)",
    desc:
        "Built in 1550 AD, this church belongs to the Knanaya Orthodox Syrian community. The Persian cross, believed to be one of the seven brought by St. Thomas, and the Pahlavi inscriptions of this church are famous. The annual festival, St. George's Feast falls on April 24. Ph: 0481-2563324. (Open 0800-2000 hrs)",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "St. Mary's Orthodox Church,Cherlapalli ",
      trailing: "(2 km from Kottayam) ",
      desc:
          "Built in 1579 by Thekkumkoor Maharajah, this church displays outstanding architecture style that is a blend of Kerala and Portuguese styles. The walls are adorned with beautiful murals made in oriental and western styles on biblical and non-biblical themes, Feast Day: January 15.Ph:2566744. www.kottayamcheriapally.com (Open 0800-1800 hrs)",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "St. Thomas Church, Cherpungal",
      trailing: "(21 km from Kottayam) ",
      desc:
          "Believed to have been established by the apostle St. Thomas, this church was relocated to the southern banks of the Meenachil River with the cooperation of the great poet Kunchan Nambiar and his family. In 1107, the Vallapalli was built on the original site. Devotees offer prayers with an oil lamp placed before the image of Infant Jesus, a ritual similar to the devotional practice of Hindus.",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title: "Surya Temple, Adityapuram ",
    trailing: "(25 km from Kottayam)",
    desc:
        " The Surya Temple is the only temple dedicated to Aditya, the Sun God, In Kerala. The first and last Sundays of the zodiacs, Scorpio (November December) and Arles (April-May), are considered auspicious to visit the temple.",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
  PilgrimViewMore(
      title: "The CSI Cathedral Church",
      trailing: "(1 km from Kottayam) ",
      desc:
          " Built over 175 years ago, the CSI cathedral church is a monument from the British Era.",
      bgcolor: Color(0xFFFCF0F0),
      iconColor: Color.fromARGB(255, 236, 151, 158)),
  PilgrimViewMore(
      title: "Vimalagiri Church: ",
      trailing: "(2 km fromKottayam) ",
      desc:
          "This Church, built in the Gothic architectural style, has a 172 ft tower, which is one of the tallest church towers in Kerala. The annual feast is celebrated in December.",
      bgcolor: Color(0XFFEDF4FE),
      iconColor: Color.fromARGB(255, 96, 151, 219)),
  PilgrimViewMore(
    title: "Vennimala ",
    trailing: "(15 km from Kottayam)",
    desc:
        "Easily accessible from the Kottayam Kumili Road, Vennimala has a century-old Rama Temple that, according to legends. Lord Rama had visited during his exile. The remains of a palace, a cave, etc. are the other attractions. Near Vennimala is the Aruvikkuzhi Waterfalls and the Mathrumala Temple.",
    bgcolor: Color(0xFFFFF7EC),
    iconColor: Color.fromARGB(255, 236, 199, 119),
  ),
];
