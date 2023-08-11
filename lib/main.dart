import 'dart:js';

import 'package:city/bukhara.dart';
import 'package:city/cities.dart';
import 'package:city/main.dart';
import 'package:city/main_page.dart';
import 'package:city/samarkand.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => MyApp(),
      "/b": (context) => Bukhara(),
      "/s": (context) => Samarkand()
    },
    debugShowCheckedModeBanner: false,
  ));
}



