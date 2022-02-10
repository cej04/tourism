import 'package:flutter/material.dart';
class menuPage extends StatefulWidget {
  const menuPage({ Key? key }) : super(key: key);

  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("First"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Second"),
                    value: 2,
                  )
                ]
            );
  }
}