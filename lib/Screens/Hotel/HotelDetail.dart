import 'package:flutter/material.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({ Key? key }) : super(key: key);

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: Text("HotelDetail")
        
      ),
    );
  }
}