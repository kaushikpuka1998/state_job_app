import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newcheck/widget/drawernaviagtion.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late WebViewController _controller;

  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "StateJob",
            style: GoogleFonts.mcLaren(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        drawer: DrawerNavigation(),
        body: WillPopScope(
          onWillPop: () => _goBack(context),
          child: WebView(
            initialUrl: 'https://www.statejob.in/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controllerCompleter.future.then((value) => _controller = value);
              _controllerCompleter.complete(webViewController);
            },
          ),
        ),
      ),
    );
  }

  Future<bool> _goBack(BuildContext context) async {
    if (await _controller.canGoBack()) {
      _controller.goBack();

      print("URLLLLLLLLLLLLLLLLLLLL BACKAKKKKKKKK");
      return Future.value(false);
    } else {
      print("Activity BACKAKKKKKKKK");
      exit(0);
      //return Future.value(true);
    }
  }
}
