import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/TouristPlaces/Historic/historic.dart';

class HistoricCard extends StatelessWidget {
  final Historic historic;
  final VoidCallback press;
  const HistoricCard({Key? key, required this.historic, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                   
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(historic.imageU))),
                    alignment: Alignment
                        .bottomCenter, 
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.0,
                            bottom: 15), 
                        child: Text(historic.title.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.apply(
                                  color: Colors.white,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.5),
                                )
                                .copyWith(letterSpacing: 1)))),
                
              ),
            ]));
  }
}
