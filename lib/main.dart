import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuad_test/home.dart';
import 'utils/colors.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: mainTheme,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}