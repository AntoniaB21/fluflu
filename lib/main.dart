import 'package:flutter/material.dart';
import 'package:m2/screens/detail/index.dart';
import 'package:m2/screens/detail/update.dart';
import 'package:m2/screens/home.dart';
import 'package:m2/screens/profile/index.dart';
import 'package:m2/screens/profile/update.dart';

void main() {
  runApp(const MyApp());
}

final Map<String, Widget Function(BuildContext)> routes = {
  '/home': (context) => const MyHomePage(title: 'Flutter'),
  '/detail': (context) => const DetailScreen(),
  '/detail/update': (context) => const UpdateDetailScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/profile/update': (context) => const UpdateProfileScreen(),
  '/other': (context) => Scaffold(
        appBar: AppBar(),
      ),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: '/home',
    );
  }
}
