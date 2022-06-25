import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Hospital/hospital.dart';

class HospitalCard extends StatelessWidget {
  final Hospital hospital;
  final VoidCallback press;
  const HospitalCard({Key? key, required this.hospital, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Container(
          //  height: MediaQuery.of(context).size.height/4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: hospital.bgcolor, borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.local_hospital_outlined,
                  color: hospital.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(hospital.name,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Text(hospital.description,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(hospital.phone.toString(), textAlign: TextAlign.center)
                  ],
                )
              ],
            ),
          ),
          //     height: MediaQuery.of(context).size.height/18,
          //    child:

          // Image.asset(restaurant.image,)
        ),
      ),
    );
  }
}
