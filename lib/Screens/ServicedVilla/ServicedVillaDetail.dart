import 'package:flutter/material.dart';

class ServicedVillaDetail extends StatefulWidget {
  const ServicedVillaDetail({ Key? key }) : super(key: key);

  @override
  State<ServicedVillaDetail> createState() => _ServicedVillaDetailState();
}

class _ServicedVillaDetailState extends State<ServicedVillaDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Serviced Villa Details Page"),
        
      ),
    );
  }
}