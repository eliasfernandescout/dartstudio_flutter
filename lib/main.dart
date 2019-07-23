import 'package:flutter/material.dart';
import 'package:dartstudio_flutter/pages/login.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Dart Studio",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: LoginPage(),
    );
  }
}