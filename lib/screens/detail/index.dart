import 'package:flutter/material.dart';
import 'package:m2/components/carousel/index.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail/update');
            },
            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.edit),
            ),
          ),
        ],
      ),
      body: CarouselImages(),
    );
  }
}
