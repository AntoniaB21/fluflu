import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget {
  final Map hotelData;

  ShowCard(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(10),
      height: 230,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0,3),
          ),
        ]
      ),
    );
  }

}