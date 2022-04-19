class Hotel {
  String imageU;
   String name;
    String address;
     int price;

     Hotel({
       required this.imageU,
       required this.name,
       required this.address,
       required this.price
     });

}

final List<Hotel> hotels =[
  Hotel(imageU:"assets/images/winsorCastle.jpg",
name:"name",
address:"404 address",
price:175),
Hotel(imageU:"assets/images/tajhotel.jpg",
name:"name",
address:"404 address",
price:175),
Hotel(imageU:"assets/images/winsorCastle.jpg",
name:"name",
address:"404 address",
price:175),


];