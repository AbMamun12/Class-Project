// class 8.1 (single child, multiple child(children)
// column,row, Single Child scrollView
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
   /*   body: Column(
        // vertically arrange
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Abdullah'),
            ElevatedButton(onPressed: (){}, child: Text('Click Here'),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.safety_check))

    ],
      ),  */
   /*   body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          //Horizontally
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          children: [
            Text('Adsf\nsfghgs'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),
            Text('Adsf'),

          ],
        ),
      ), */
      body: SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Text('Column: 1'),
                Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),Text('Column: 1'),
              ],
            ),
            Column(
              children: [
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),

                Text('Column 2'),

                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Text('Column 2'),
                Row(
                  children: [
                    Text('COlumn 1 Row 2'),
                    Text('COlumn 1 Row 2'),
                    Text('COlumn 1 Row 2'),
                    Text('COlumn 1 Row 2'),
                    Text('COlumn 1 Row 2'),
                    Text('COlumn 1 Row 2'),
                    Text('COlumn 1 Row 2'),
                    Text('COlumn 1 Row 2'),

                  ],
                )

              ],
            ),
            Column(
              children: [
                Text('Column 3'),
                Text('Column 3'),
                Text('Column 3'),
                Text('Column 3'),              Text('Column 3'),
                Text('Column 3'),              Text('Column 3'),
                Text('Column 3'),              Text('Column 3'),
                Text('Column 3'),
              ],
            ),
            Column(
              children: [
                Text('Column 4'),
                Text('Column 4'),
                Text('Column 4'),
                Text('Column 4'),
                Text('Column 4'),
                Text('Column 4'),
                Text('Column 4'),
                Text('Column 4'),
                Text('Column 4'),

              ],
            )
          ],
        ),
      ),
    );
  }
}
