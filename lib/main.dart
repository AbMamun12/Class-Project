// class 8.3 padding, margin, elevation button, dialog box, bottom sheet dialog
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
//color: Colors.green,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(16),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.red, width: 4),
                    //borderRadius: BorderRadius.circular(16)
                    /*   borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                  bottomRight: Radius.circular(23)
                  ) */
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/bd_flug.jpg'),
                      fit: BoxFit.cover,
                      opacity: .9,
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // chnage of the shawod
                      ),
                      BoxShadow(
                        color: Colors.red.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // chnage of the shawod
                      ),
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // chnage of the shawod
                      )
                    ]),
                child: Text('Abdullah'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              padding: EdgeInsets.all(24),
              margin: EdgeInsets.all(16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Abdullah-Al-Mamun'),
            ),
            ElevatedButton(
              onPressed: () {
                /*   showAboutDialog(
                  context: context,
                  applicationName: 'Sample',
                  applicationVersion: '1.2.1',
                  children: [
                    Text('Sample Text')
                  ]
                ); */

                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.black,
                    builder: (ctx) {
                      return AlertDialog(
                        title: Text('Our Custom Dialog'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sample Text 1'),
                            Text('Sample Text 2'),
                            Text('Sample Text 3'),
                            Text('Sample Text 4'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Save'),
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.grey,
                      );
                    });
              },
              child: Text('Dialog'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    barrierColor: Colors.black,
                    enableDrag: false,
                    isDismissible: false,
                    builder: (ctx) {
                      return SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Title'),
                            ),
                            Divider(),
                            Column(
                              children: [

                                Text('Text 1'),
                                Text('Text 2'),
                                Text('Text 3'),
                                Text('Text 4'),
                              ],
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Text('Show Bottom Sheet'),
            )
          ],
        ),
      ),
    );
  }
}
