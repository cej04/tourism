import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Culinary/culinary.dart';
import 'package:ktmtourism/Screens/Culinary/culinary_bodyPage.dart';
import 'package:ktmtourism/Screens/Headers/header_culinary.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';



class CulinaryDelightPage extends StatelessWidget {
  
  const CulinaryDelightPage({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
    Scaffold(
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
       
          child: const MyAppBar(),
        
      ),
      body: Column(
        children: [
            HeaderWithCulinary(size: size),
          Expanded(
            child: Container(
              child: 
ListView.builder(
          itemCount: culinary.length,
          itemBuilder: (context, index) {
            return 
            
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: GestureDetector(
                 
                 child: Container(
                   height: 200,
                  //  margin:EdgeInsets.only(left: kDefaultPadding,top:kDefaultPadding/2,bottom: kDefaultPadding/2),
                  //  width: size.width * 0.8,
                  //   height:185,
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                     image:DecorationImage(
                           fit: BoxFit.fill,
                           image: AssetImage( culinary[index].image))
                   ),
                   
                    alignment: Alignment.bottomCenter, // This aligns the child of the container
                  child: Padding(
                   padding: EdgeInsets.only(left: 15.0,
                   bottom: 15), //some spacing to the child from bottom
                   child: Text( culinary[index].title.toUpperCase(),  style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white,backgroundColor:Colors.black.withOpacity(0.5), ).copyWith(letterSpacing: 1))
                  )
                 
                    ),
                    onTap: () => Navigator.push(
                   context, MaterialPageRoute(
                     builder: (context) => CulinaryBodyPage(
                       culinary:culinary[index],
                       ),
                       )
               
               
               ),
             )
             );
 


              // GridView.builder(
              //    padding: const EdgeInsets.all(10),
              //   itemCount: culinary.length,
              //   gridDelegate:
              //   const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 1,
              //   // mainAxisSpacing: kDefaultPadding,
              //   crossAxisSpacing: 0.0,
              // mainAxisSpacing: 0.0,
              //  // childAspectRatio: 0.95,
              //   ),
              
              // itemBuilder: (context,index) => CulinaryCard(
              //   culinary: culinary[index],
              //    press: () => Navigator.push(
              //      context, MaterialPageRoute(
              //        builder: (context) => CulinaryBodyPage(
              //          culinary:culinary[index],
              //          ),
              //          ),
              //    ),
              // )
              // ),
          }
            ),
            )
          )
        ],
      ),
    );
  }
}

