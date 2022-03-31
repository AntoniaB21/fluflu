import 'package:flutter/material.dart';
import 'package:m2/components/carousel/index.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailTest'),
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        iconSize: 48,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    );
  }
}
