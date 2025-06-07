import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Counter $counter'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },

            child:  Icon(Icons.add),
          ),
          SizedBox(width: 16,),
          FloatingActionButton(
            onPressed: () {
              counter--;
              if (counter <=0){
                counter =0;
              }

              setState(() {});
            },
            child:const Icon(Icons.remove),
          ),
         const SizedBox(width: 16,),
          FloatingActionButton(
            onPressed: () {
              counter = 0;
              setState(() {});
            },

            child: const Text('Reset'),
          ),
        ],
      ),
    );

  }

}



/*
class Home extends StatelessWidget {
   Home({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Counter $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
         // print(counter);
        },
        child: Icon(Icons.add),
      ),
    );

  }
}
*/
