import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/ReachKtm/ReachTrain/Train.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';

class TrainDetailPage extends StatelessWidget {
  const TrainDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: const MyAppBar(),
      ),
        body: Column(
           mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 20,),
            // const SizedBox(width: 10,),
            // Text(commercial.title,
            //     style:
            //         const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
            Container(
              child: Text("By Train",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/train.jpg"),
                  fit: BoxFit.fill,

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(child: Text("You can easily get regular trains to Kottayam from other major cities of the country. Railway Station Kottayam.",style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),),
            )
           
            ,Flexible(
              flex: 1,
                  fit: FlexFit.tight,
              child: ListView.builder(
              shrinkWrap: true,
                itemCount: train.length,
                // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 1,
                // ),
                itemBuilder: (context, index) => TrainDetailCard(train: train[index]),
            
              ),
            ),

          
          ],
        )


        );
  }
}

class TrainDetailCard extends StatelessWidget {
  final Train train;
  const TrainDetailCard({
    Key? key,
    required this.train,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.max,
      
      children: [
        SizedBox(
          height: 20,
        ),
        Card(
          color:Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(train.title,textAlign: TextAlign.center,style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black,)),
          ),
        ),
        SizedBox(height: 20,),
        Container(
   
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                
                TextSpan(
                    text: 'Phone :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: train.phone.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                         
                        TextSpan(
                    text: '\n\nPincode :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(
                    text: train.pincode.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
          ),
        ),
     
      ]
    );

  
  }
}
