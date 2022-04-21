import 'package:flutter/material.dart';
import 'package:flutter_tp/home_animation.dart';
import 'homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

const d_red = const Color(0xFFE9717D);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show Lists',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar:  AppBar(
          title: Text('Netflix App'),
        ),
        body: Center(
          child:  HomeAnimation(delay: 2000, child: FlutterLogo(size: 200),),
        ),
      ),
    );
  }
}
