import 'package:flutter/material.dart';

class HeaderWithCommercial extends StatelessWidget {
  const HeaderWithCommercial({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: size.height * 0.2,
       child: Stack(
         children: [

           Container(

             height: size.height * 0.2 - 25,
              decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/stay.jpg"),
                  fit: BoxFit.cover),
            ),
            
             child: 
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 70,
                ),
             
                   Center(
                      child: Text("Commercial",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Colors.white))),
             
              ],
            ),
           
           ),
         
         ],
       ),
    );
  }
}