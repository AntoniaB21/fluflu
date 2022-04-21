import 'package:flutter/material.dart';
import 'package:flutter_tp/home_animation.dart';
import 'homepage.dart';

const d_red = const Color(0xFFE9717D);


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
                  child: Text(
                    "Flutter Project from TVMAZE public API",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.8),
                  ),
                  ),
                  )),

                HomeAnimation(
                    delay: 3500,
                    child: Container(
                      width: 300,
                      margin: EdgeInsets.only(
                        top: 230,
                        bottom: 120,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: d_red,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(13)),
                        child: Text('GET STARTED'),
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageShow(),
                        ),
                      );
                      },
                      ),
                    ),
                  ),
                  
              ],
            )
          )
        )
      );
  }
}
