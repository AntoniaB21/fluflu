import 'package:flutter/material.dart';
import 'package:m2/components/exercices/exercice_1.dart';
import 'package:m2/components/exercices/exercice_2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
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
