import 'package:flutter/material.dart';
import 'package:ktmtourism/Screens/Headers/header_stateOwned.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwned.dart';
import 'package:ktmtourism/Screens/StayKtm/StateOwned/StateOwnedDetail.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';




class StateOwnedPage extends StatefulWidget {
  const StateOwnedPage({Key? key}) : super(key: key);

  @override
  _StateOwnedPageState createState() => _StateOwnedPageState();
}

class _StateOwnedPageState extends State<StateOwnedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
       
          child: const MyAppBar(),
        
      ),
      body:
       Column(
        children: [
           HeaderWithStateOwned(size: size),
            Expanded(
            child: Container(
              child: 
ListView.builder(
          itemCount: stateowned.length,
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
                           image: AssetImage( stateowned[index].image))
                   ),
                   
                    alignment: Alignment.bottomCenter, // This aligns the child of the container
                  child: Padding(
                   padding: EdgeInsets.only(left: 15.0,
                   bottom: 15), //some spacing to the child from bottom
                   child: Text( stateowned[index].title.toUpperCase(),  style: Theme.of(context).textTheme.labelMedium?.apply(color: Colors.white,backgroundColor:Colors.black.withOpacity(0.5), ).copyWith(letterSpacing: 1))
                  )
                 
                    ),
                    onTap: () => Navigator.push(
                   context, MaterialPageRoute(
                    builder: (context) => StateOwnedDetailsPage(
                     stateowned:stateowned[index],
                     ),
          //            ),
                       )
               
               
               ),
             )
             );
           }
            ),
            )
          )
          // Expanded(
          //   child: GridView.builder(
          //      padding: const EdgeInsets.all(20),
          //     itemCount: stateowned.length,
          //     gridDelegate:
          //     const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //     // mainAxisSpacing: kDefaultPadding,
          //     crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //     // childAspectRatio: 0.75,
          //     ),
            
          //   itemBuilder: (context,index) => StateOwnedCard(
          //     stateowned: stateowned[index],
          //      press: () => Navigator.push(
          //        context, MaterialPageRoute(
          //          builder: (context) => StateOwnedDetailsPage(
          //            stateowned:stateowned[index],
          //            ),
          //            ),
          //      ),
          //   )
          //   ),
          //   )
        ],
      ),
   
    );
  }
}
