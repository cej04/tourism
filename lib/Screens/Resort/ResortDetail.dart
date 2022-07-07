import 'package:flutter/material.dart';

class ResortDetail extends StatefulWidget {
  const ResortDetail({ Key? key }) : super(key: key);

  @override
  State<ResortDetail> createState() => _ResortDetailState();
}

class _ResortDetailState extends State<ResortDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Resort Details Page"),
        
      ),
    );
  }
}