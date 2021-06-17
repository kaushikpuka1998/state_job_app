import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newcheck/Screens/mainpage.dart';
import 'allstate.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'mainpage',
      routes: {
        'mainpage': (context) => MainPage(),
        'allstatepage': (context) => Allstate(),
      },
    );
  }
}
