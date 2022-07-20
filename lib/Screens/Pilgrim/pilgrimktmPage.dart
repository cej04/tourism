import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrimsBodyPage.dart';
import 'package:ktmtourism/Screens/Pilgrim/pilgrims.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class PilgrimKtmPage extends StatefulWidget {
  const PilgrimKtmPage({Key? key}) : super(key: key);

  @override
  State<PilgrimKtmPage> createState() => _PilgrimKtmPageState();
}

class _PilgrimKtmPageState extends State<PilgrimKtmPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<Pilgrims> pilgrimsonsearch = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: const MyAppBar(
          title: 'Pilgrim Centers',
        ),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                pilgrimsonsearch = pilgrims
                    .where((element) => element.title
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toList();
              });
            },
            controller: _textEditingController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20), hintText: 'Search here'),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: _textEditingController.text.isNotEmpty
                    ? pilgrimsonsearch.length
                    : pilgrims.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: GestureDetector(
                      child: Card(
                        color: Colors.grey[200],
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Image.asset(_textEditingController.text.isNotEmpty
                                ? pilgrimsonsearch[index].image
                                : pilgrims[index].image),
                            ListTile(
                              title: Text(_textEditingController.text.isNotEmpty
                                  ? pilgrimsonsearch[index].title
                                  : pilgrims[index].title),
                              subtitle: Text(
                                _textEditingController.text.isNotEmpty
                                    ? pilgrimsonsearch[index].subtitle
                                    : pilgrims[index].subtitle,
                              ),
                              trailing: Icon(Icons.navigate_next),
                            ),
                          ],
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PilgrimsBodyPage(
                            pilgrims: _textEditingController.text.isNotEmpty
                                ? pilgrimsonsearch[index]
                                : pilgrims[index],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
