import 'package:flutter/material.dart';

class Exercie1 extends StatelessWidget {
  const Exercie1({
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
          height: 250,
          width: 250,
          color: Colors.red,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 250,
          width: 250,
          color: Colors.green,
        ),
      ],
    ),
    const SizedBox(
      height: 10,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 250,
          width: 250,
          color: Colors.blue,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 250,
          width: 250,
          color: Colors.yellow,
        ),
      ],
    ),
      ],
    );
  }
}