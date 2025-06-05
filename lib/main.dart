import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60))));
    return Scaffold(
        appBar: AppBar(
          title: Text('Greetting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, World!',
                style: TextStyle(
                  //color:Color(Colors.red as int),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Text(
                'Welcome to Flutter !',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Center(
                  child: Image.network(
                      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  MySnackBar('Button Pressed!', context);
                },
                child: Text(
                  'Press Me',
                  style: TextStyle(fontSize: 16),
                ),
                style: buttonStyle,
              ),
            ],
          ),
        ));
  }
} 