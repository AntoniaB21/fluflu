import 'package:flutter/material.dart';
import 'package:flutter_tp/home_animation.dart';
import 'homepage.dart';

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
                    height: 200,
                    child: Image.asset('images/tvm-header-logo.png')),
                  ),
                  HomeAnimation(
                  delay: 2000,
                  child: Container(
                    height: 400,
                    margin: EdgeInsets.only(
                      top:30,
                      bottom: 20,
                    ),
                  child: Text(
                    "Flutter Project from TVMAZE public API",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8),
                  ),
                  ),
                  ))
              ],
            )
          )
        )
      );
  }
}
