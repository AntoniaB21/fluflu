import 'package:flutter/material.dart';
import 'package:flutter_tp/home_animation.dart';
import 'homepage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 30,
            ),
            child: Column(
              children: [
                HomeAnimation(
                  delay: 2000,
                  child: Container(
                    child: Image.asset('images/netflix-logo.jpg')),
                  ),
              ],
            )
          )
        )
      );
  }
}
