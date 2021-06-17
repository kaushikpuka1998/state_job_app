import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  late WebViewController _controller;

  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "StateJob",
          //style: GoogleFonts.mcLaren(fontSize: 15, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () => _goBac(context),
        child: WebView(
          initialUrl: 'https://www.statejob.in/contact-us/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controllerCompleter.future.then((value) => _controller = value);
            _controllerCompleter.complete(webViewController);
          },
        ),
      ),
    );
  }

  Future<bool> _goBac(BuildContext context) async {
    if (await _controller.canGoBack()) {
      _controller.goBack();

      print("URLLLLLLLLLLLLLLLLLLLL BACKAKKKKKKKK");
      return Future.value(false);
    } else {
      print("Activity BACKAKKKKKKKK");
      //exit(0);
      return Future.value(true);
    }
  }
}
