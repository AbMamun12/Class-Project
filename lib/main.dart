// class 8.2 List view, Grid view, Size box, ListTile,Divider
import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: 'IntroApp',
      themeMode: ThemeMode.dark,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> FriendList = [
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
    'abdullah',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.grey,
      ),


    );
  }
}
