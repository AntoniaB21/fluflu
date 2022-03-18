import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile/update');
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}
