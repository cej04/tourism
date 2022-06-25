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
            //  Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children:  [
            //     SizedBox(
            //       height: 70,
            //     ),
             
                        Container(
                          width: MediaQuery. of(context). size. width,
                             color: Colors.grey[900]?.withOpacity(0.4),
                             alignment: Alignment.center,
                     child: Text("Commercial",
       
                      style: Theme.of(context).textTheme.headline5?.apply(color: Colors.white,).copyWith(letterSpacing: 1)
       

                          // style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 24.0,
                          //     color: Colors.white)
                              
                              )
                              ),
             
            //   ],
            // ),
           
           ),
         
         ],
       ),
    );
  }
}