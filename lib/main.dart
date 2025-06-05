import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    print(mediaQuery.size.width);
    print(mediaQuery.size.height);
    print(mediaQuery.size.aspectRatio);
    print(mediaQuery.size.flipped.height);
    print(mediaQuery.devicePixelRatio);

    if(mediaQuery.size.width<640){
      print('This is a PHONE');
    }
    else if (mediaQuery.size.width>640 && mediaQuery.size.width<1008){
      print('This is a Tablet');
    } else {
      print('Laptop/Desktop');
    }

    return  Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,

      ),
      body: OrientationBuilder(
        builder: (context, Orientation orientation) {
          print(orientation);
          /* return Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 16,
                children: [
                  Text('dddddddddddddddd'),
                  Text('dddddddddddddddd'),
                  Text('dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
                  Text('dddddddddddddddd'),
                  Text('dddddddddddddddd'),




                ],
              ),
              Text(orientation.name),
            ],
          );*/
          if (orientation == Orientation.portrait) {
            return Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  children: [
                    Text('dddddddddddddddd'),
                    Text('dddddddddddddddd'),
                    Text(
                        'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
                    Text('dddddddddddddddd'),
                    Text('dddddddddddddddd'),
                  ],
                ),
                Text(orientation.name),
              ],
            );
          } else {
            return Center(
              child: Text('Too Big Screen'),
            );
          }
        }
      ),
    );
  }
}

