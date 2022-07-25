import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ktmtourism/Screens/Welcome/welcomektm.dart';
import 'package:ktmtourism/Screens/Widget/appbarWidget.dart';
import 'package:ktmtourism/Utils/constants.dart';
import 'package:readmore/readmore.dart';

class WelcomeKtmDetailsPage extends StatefulWidget {
  final Welcome welcome;
   WelcomeKtmDetailsPage({Key? key, required this.welcome})
      : super(key: key);

  @override
  State<WelcomeKtmDetailsPage> createState() => _WelcomeKtmDetailsPageState();
}

class _WelcomeKtmDetailsPageState extends State<WelcomeKtmDetailsPage> {
   final FlutterTts tts = FlutterTts();

   bool speaking = false;

 @override ///2
  void initState() {
    widget.welcome.description;
    tts.setStartHandler(() {
      ///This is called when the audio starts
      setState(() {
        speaking = true;
      });
    });

    tts.setCompletionHandler(() {
      ///This is called when the audio ends
      setState(() {
        speaking = false;
      });
    });
    super.initState();
  }
 @override ///3
  void dispose() {
   dispose();
    super.dispose();
  }
 

  Speech() {
    tts.setLanguage('en-us');
    tts.setSpeechRate(0.4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(   
      title: Text("About Kottayam"),     
    automaticallyImplyLeading: false,
    leading: Navigator.canPop(context)
        ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        : null,
),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Container(
              child: Text(widget.welcome.title,
              ),
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              
              image: DecorationImage(
                image: AssetImage(widget.welcome.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: ReadMoreText(widget.welcome.description,
                            textAlign: TextAlign.justify,
                                                         style: TextStyle(height: 1.7),

                            trimLines: 20,
                            colorClickableText: Colors.blue,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                            lessStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue))),
                  ),
                ),
              ],
            ),
          ),
             SizedBox( ///4
              child: Text(
             speaking ? "Playing" : "Not playing"
              ),
            ),
         
          //  ElevatedButton(
          //     onPressed: () {
          //       tts.speak(widget.welcome.description);
          //     },
          //     child: Text('Speak'))
        ],
      ),
          floatingActionButtonLocation:
        FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                heroTag: "btn",
                onPressed: () => _speak(widget.welcome.description),
                child: Icon(Icons.play_arrow),
              ),
              SizedBox(
                width: 130,
              ),
              FloatingActionButton(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                heroTag: "btn2",
                onPressed: () => _stop(),
                child: Icon(Icons.stop),
              )
            ],
          ),
        )
    );
  }
   Future _speak(String text) async {
    await tts.setLanguage("en-US");
    await tts.setPitch(1.0);
    await tts.speak(text);
  }

  Future _stop() async {
    await tts.stop();
  }
}
