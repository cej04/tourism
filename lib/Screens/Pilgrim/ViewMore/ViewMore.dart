import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/ViewMore/View.dart';
import 'package:ktmtourism/Screens/Pilgrim/ViewMore/ViewMorePigrimCard.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';

class ViewMorePilgrim extends StatefulWidget {
  const ViewMorePilgrim({
    Key? key,
  }) : super(key: key);

  @override
  State<ViewMorePilgrim> createState() => _ViewMorePilgrimState();
}

class _ViewMorePilgrimState extends State<ViewMorePilgrim> {
    TextEditingController _textEditingController = TextEditingController();
  List<PilgrimViewMore> pilgrimviewmoreonsearch = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(title: 'Kottayam Tourism',),
      ),
      body: 
      Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child:
             Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    pilgrimviewmoreonsearch = pilgrimviewmore
                        .where((element) => element.title
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Search here'),
              )),
            
            //  Text("Pilgrim Centers",style: Theme.of(context).textTheme.headline6?.copyWith(
            //     color: Colors.black, fontWeight: FontWeight.bold,)),
          ),
                  Expanded(
            child: ListView.builder(
                itemCount: _textEditingController.text.isNotEmpty
                    ? pilgrimviewmoreonsearch.length
                    : pilgrimviewmore.length,
                itemBuilder: (context, index) => ViewMoreCard(
                    pilgrimviewmore: _textEditingController.text.isNotEmpty
                        ? pilgrimviewmoreonsearch[index]
                        : pilgrimviewmore[index],
                    press: () {})),
          ),
        ],
      ),
       
          
        
  
      );


  }
}