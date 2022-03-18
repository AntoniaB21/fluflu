import 'package:flutter/material.dart';

class Exercice1 extends StatelessWidget {
  const Exercice1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          color: Colors.red,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.green,
        ),
      ],
    ),
    const SizedBox(
      height: 5,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.yellow,
        ),
      ],
    ),
      ],
    );
  }
}