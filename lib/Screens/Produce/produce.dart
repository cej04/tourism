
class Produce{
  final String image, title,description,type;
  
  Produce({
    required this.image,
    required this.title,
    required this.description,
    required this.type
  });
}
List<Produce> produce = [
  Produce(
    image:"assets/images/bambooproduct.jpg",
    title: " Bamboo products",
    description: "Bamboo Bazar Kumarakom – Bamboo products",
    type:"Handicraft"
),
 Produce(
    image:"assets/images/woodshaped.jpg",
    title: " Wood shaped models",
    description: "PPR Handicraft unit in Kumarakom, Cheepunkal carved wood shaped models like Nettipattom, flags,elephant etc.",
 type:"Handicraft"
),
Produce(
    image:"assets/images/rice.jpg",
    title: "Rice",
    description: "Rice is the seed of the grass species Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain, it is the most widely consumed staple food for a large part of the world’s human population, especially in Asia.",
 type:" Natural"
),


Produce(
    image:"assets/images/rubber.jpg",
    title: "Rubber",
   description: "Rubber is harvested mainly in the form of the latex from the rubber tree or others. The latex is a sticky, milky colloid drawn off by making incisions in the bark and collecting the fluid in vessels in a process called “tapping”. The latex then is refined into rubber that is ready for commercial processing. In major areas, latex is allowed to coagulate in the collection cup. The coagulated lumps are collected and processed into dry forms for marketing.",
 type:" Industry"
),

];
