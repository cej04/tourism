import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainHomeSample extends StatelessWidget {
  const MainHomeSample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
           
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                items: [
                    
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/vagamon.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/kumarakom.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/bhmchurch.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/ilaveezhapoonjira.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    
                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/vembanad.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
  
          ],
                
            //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
          ),
              ),
          SizedBox(height:10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height*.5,
            child: GridView.count(crossAxisCount: 3,
            mainAxisSpacing:15,
            crossAxisSpacing: 15,
            children: [
             customGridView('assets/images/aboutktm.jpeg','About Kottayam'),
             customGridView('assets/images/tourism.jpg','Tourist Places'),
             customGridView('assets/images/vagamon.jpg','vagamon'),
             customGridView('assets/images/vagamon.jpg','vagamon'),
             customGridView('assets/images/vagamon.jpg','vagamon'),
            ],
            ),
          )
        
          ],
        )
      ],
      
    );
   
  }
   Widget customGridView(image,title){
      return  Container(
              
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //  BoxShadow(
                  //    color:Colors.grey,
                  //  spreadRadius: 1,
                  //  blurRadius: 8) 
                  // ]
                ),
                child:Column(
                 // mainAxisSize: MainAxisSize.max,
                  //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children:[
                  Image.asset('$image',fit: BoxFit.fill,),
                   // Text("About Kottayam"),
                    Row(
                      children: [
                        Text('$title',style: TextStyle(fontSize: 12,fontWeight:FontWeight.bold),)
                      ],
                    )
                  ]
                )
              );
    }
}