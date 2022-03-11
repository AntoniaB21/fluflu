import 'package:flutter/material.dart';

class Exercice2 extends StatelessWidget {
  const Exercice2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.blue,
          height: 100,
        ),
        SizedBox(
          height: 800,
          width: 450,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
        ),
      ],
    );
  }
}
