import 'package:flutter/material.dart';
import 'package:portofolio/about.dart';
import 'package:portofolio/home.dart';
import 'package:portofolio/project.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Soho'),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => Myhome(),
      'about': (context) => Myabout(),
      'project': (context) => MyProject(),
  },
  ));
}
