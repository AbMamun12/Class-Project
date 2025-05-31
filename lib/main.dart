/*import 'package:flutter/material.dart';
1.
void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Home'),
        ),
        body: Center(
          child: Text('Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways.',
            textAlign: TextAlign.justify,
            maxLines: 2,
            style: TextStyle(

            fontSize: 43,
            color: Colors.red,
            backgroundColor: Colors.blueAccent,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.underline,
            wordSpacing: 34,
              overflow: TextOverflow.ellipsis,
          ) ,),
        ),
      ),
    );

  }

} */
/*
2
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(IntroApp());

}
class IntroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Home',style: TextStyle(
              color: Colors.brown,
              backgroundColor: Colors.white,
              decoration: TextDecoration.lineThrough,
          ),),

        ),
        body: Center(
          child: Text(
            'fdgggggggggggggggggggggggggggggggggs reggggggg qaregqe rer gre g re ',
            textAlign: TextAlign.justify,

          ),
        ),
      ),
    );

  }

} */
// class 7.3 Image, Material App, Scaffold, Icons, Buttons(Elevation Button, Icon Button)
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        /*       child: Icon(
          Icons.computer,
          size: 700,
          color: Colors.greenAccent,
        ),*/
        //child: Image.network('https://www.gettyimages.com/photos/bangladesh-flag'),
        /*      child: Image.asset('assets/images/bd_flug.jpg',
          width: 400,
          height: 100,
          fit: BoxFit.fitHeight,
        ), */
        /*    child: ElevatedButton(
            onPressed: () {
              print('Button pressed');
            },
            child: Text('Notification')),*/
       /* child: IconButton(
    onPressed: (){
      print('Add');
      },
    icon: Icon(Icons.add),
      ), */
        /*
        child: TextButton(
            onPressed: (){
              print('Show button pressed');
            },
            child: Text('Text Button')),
          */
     /*   child: GestureDetector(
          onTap: (){
            print('Single Tap');
          },
          onDoubleTap: (){
            print('Doule Tap');
          },
          child: Image.asset(
            'assets/images/bd_flug.jpg',
            width: 250,
              height: 100,
              fit: BoxFit.cover,
          ),
        ),*/
 /*   child: GestureDetector(
    onTap: (){
    print('Single Tap');
    },
    onDoubleTap: (){
    print('Doule Tap');
    },
      child: Text('Normal Text'),
      ), */
          child: InkWell(
            onTap: (){
              print('Single Tap');
            },
            onDoubleTap: (){
              print('Doule Tap');
            },
            child: Text('Normal Text'),
          )
      ),
    );
  }
}
