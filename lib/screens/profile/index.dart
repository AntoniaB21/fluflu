import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyProfile'),
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
      body: Stack(
      alignment: Alignment.center,
       children: [
         ProfileAvatarWidget(),
         Positioned(
           top: 00,
           child: ProfilePicture()
         )
       ], 
      )
    );
  }
}
Widget ProfileAvatarWidget() => Container(
  color: Colors.black,
  child :Image.network('https://images.unsplash.com/photo-1647436929276-43fa809c907c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80'),
);

Widget ProfilePicture() => CircleAvatar(
  backgroundColor: Colors.green,
  backgroundImage:NetworkImage(
    'https://images.unsplash.com/photo-1579656592043-a20e25a4aa4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
  ),
);