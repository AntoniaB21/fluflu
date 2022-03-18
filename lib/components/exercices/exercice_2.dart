import 'package:flutter/material.dart';

class Exercice2 extends StatelessWidget {
  const Exercice2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
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
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
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
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
