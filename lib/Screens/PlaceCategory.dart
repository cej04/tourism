import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/restaurantcategory.dart';
import 'package:ktmtourism/Utils/constants.dart';

class PlaceCategory extends StatelessWidget {
  final int selected;
  final Function callback;
  final Category category;
  const PlaceCategory(
      {Key? key,
      required this.selected,
      required this.callback,
      required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categori = category.menu.keys.toList();
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () => callback(index),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kPrimaryColor : Colors.white,
                    ),
                    child: Text(categori[index]),
                  ),
                ),
            separatorBuilder: (_, index) => SizedBox(
                  width: 20,
                ),
            itemCount: categori.length),
      ),
    );
  }
}
