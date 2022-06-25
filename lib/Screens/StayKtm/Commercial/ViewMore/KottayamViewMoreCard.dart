import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/StayKtm/Commercial/ViewMore/viewMore.dart';

class kottayamViewMoreCard extends StatelessWidget {
  final CommercialViewMore commercialviewmore;
  final VoidCallback press;
  const kottayamViewMoreCard(
      {Key? key, required this.commercialviewmore, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          // height: MediaQuery.of(context).size.height/3,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: commercialviewmore.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.star_border_purple500,
                  color: commercialviewmore.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
                // ,

                //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),

                Text(
                  commercialviewmore.title.toString(),
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tariff : "),
                    Text(commercialviewmore.tariff.toString(),
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(
                      commercialviewmore.phone.toString(),
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Website : ", textAlign: TextAlign.center),
                    Expanded(
                        child: Text(
                      commercialviewmore.website.toString(),
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
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

class ChanganacherryViewMoreCard extends StatelessWidget {
  final ViewMoreChanganacherry viewmorechanganacherry;
  final VoidCallback press;
  const ChanganacherryViewMoreCard(
      {Key? key, required this.viewmorechanganacherry, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          // height: MediaQuery.of(context).size.height/4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: viewmorechanganacherry.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.star_border_purple500,
                  color: viewmorechanganacherry.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
                // ,

                //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),

                Text(
                  viewmorechanganacherry.title.toString(),
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tariff : "),
                    Text(viewmorechanganacherry.tariff.toString(),
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(viewmorechanganacherry.phone.toString(),
                        style: Theme.of(context).textTheme.subtitle1)
                  ],
                ),
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

class EttumanoorViewMoreCard extends StatelessWidget {
  final ViewMoreEttumanoor viewmorettumanoor;
  final VoidCallback press;
  const EttumanoorViewMoreCard(
      {Key? key, required this.viewmorettumanoor, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          //height: MediaQuery.of(context).size.height/4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: viewmorettumanoor.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.star_border_purple500,
                  color: viewmorettumanoor.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
                // ,

                //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),

                Text(
                  viewmorettumanoor.title.toString(),
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tariff : "),
                    Text(viewmorettumanoor.tariff.toString(),
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(viewmorettumanoor.phone.toString(),
                        style: Theme.of(context).textTheme.subtitle1)
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

class VaikomViewMoreCard extends StatelessWidget {
  final ViewMoreVaikom viewmoreVaikom;
  final VoidCallback press;
  const VaikomViewMoreCard(
      {Key? key, required this.viewmoreVaikom, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: viewmoreVaikom.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.star_border_purple500,
                  color: viewmoreVaikom.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
                // ,

                //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),

                Text(
                  viewmoreVaikom.title.toString(),
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tariff : "),
                    Text(viewmoreVaikom.tariff.toString(),
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(viewmoreVaikom.phone.toString(),
                        style: Theme.of(context).textTheme.subtitle1)
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

class MundakkayamViewMoreCard extends StatelessWidget {
  final ViewMoreMundakkayam viewmoremundakkayam;
  final VoidCallback press;
  const MundakkayamViewMoreCard(
      {Key? key, required this.viewmoremundakkayam, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          //height: MediaQuery.of(context).size.height/4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: viewmoremundakkayam.bgcolor,
              borderRadius: BorderRadius.circular(20)),

          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.star_border_purple500,
                  color: viewmoremundakkayam.iconColor,
                  size: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                //    Text(commercialviewmore.name,style: Theme.of(context).textTheme.headline6)
                // ,

                //Text(commercialviewmore.description,style: Theme.of(context).textTheme.subtitle1),

                Text(
                  viewmoremundakkayam.title.toString(),
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tariff : "),
                    Text(viewmoremundakkayam.tariff.toString(),
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Phone : "),
                    Text(viewmoremundakkayam.phone.toString(),
                        style: Theme.of(context).textTheme.subtitle1)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Website : "),
                    Text(viewmoremundakkayam.website.toString(),
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
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
