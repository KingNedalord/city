import 'dart:js';

import 'package:city/bukhara.dart';
import 'package:city/cities.dart';
import 'package:city/main.dart';
import 'package:city/main_page.dart';
import 'package:city/registration.dart';
import 'package:city/samarkand.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  bool isLogged = await prefs.getBool("isLogged") ?? false;
  runApp(MaterialApp(
    home: isLogged == true ? MyApp():Registration_Form(),
    routes: {
      "/": (context) => MyApp(),
      "/b": (context) => Bukhara(),
      "/s": (context) => Samarkand()
    },
    debugShowCheckedModeBanner: false,
  ));
}



