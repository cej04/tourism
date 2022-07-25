import 'dart:async';                                    // Add this import
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';  // Add this import back

              // Add this import




class WebViewApp extends StatefulWidget {
  const WebViewApp({key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late WebViewController controller;
     // Instantiate the controller

    @override
   void initState() {
     super.initState();
     // Enable virtual display.
  if (Platform.isAndroid) WebView.platform = AndroidWebView();
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title:Text('Kottayam Tourism'),),
       body: WebView(
         initialUrl: 'https://www.amazon.com/',
          javascriptMode: JavascriptMode.unrestricted,
         onWebViewCreated: (controller) {
           this.controller = controller;
         },
         
         onPageStarted:(url){
           print('New website:$url');

           if (url.contains('https://www.amazon.com/')){
                 Future.delayed(Duration(milliseconds: 300),(){


            // ignore: deprecated_member_use
            controller.evaluateJavascript(
             "document.getElementsByTagName('header')[0].style.display='none'"
           );
          
            // ignore: deprecated_member_use
            controller.evaluateJavascript(
             "document.getElementsByTagName('footer')[0].style.display='none'"
           );
                 });

           }


         },
        //  onPageFinished: (url) {
        //    if (isSubmitting){
        //      controller.loadUrl('https://flutter.dev');
        //      isSubmitting = false;
        //    }
        //  },
         
       
       ),
       floatingActionButton: FloatingActionButton(
         onPressed:() async {
           controller.evaluateJavascript(
             "document.getElementsByName('header')[0].style.display='none'"
           );
            controller.evaluateJavascript(
             "document.getElementsByName('footer')[0].style.display='none'"
           );
         } ),
     );
   }
 }